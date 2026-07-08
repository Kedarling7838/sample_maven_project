#===============================================================================
# Example 1: Multi-stage build using Maven and Tomcat official images
#===============================================================================

# FROM maven:3.8.4-eclipse-temurin-17 AS build

# Create application directory
# RUN mkdir /app

# Set working directory
# WORKDIR /app

# Copy project files
# COPY . .

# Build the Maven project
# RUN mvn package

# Use Tomcat image for deployment
# FROM tomcat:latest

# Copy WAR file from build stage
# COPY --from=build /app/webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war

# Copy default web applications
# RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps



#===============================================================================
# Example 2: Using Tomcat image only
# Maven should already be installed on the host.
# Build the WAR file first, then create the Docker image.
#===============================================================================

# FROM tomcat:latest

# Copy default web applications
# RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

# Copy generated WAR file
# COPY /webapp/target/*.war /usr/local/tomcat/webapps



#===============================================================================
# Example 3: Install Maven on Ubuntu and use Tomcat image
#===============================================================================

# FROM ubuntu:latest AS builder

# Install Java and required packages
# RUN apt-get update && \
#     apt-get install -y openjdk-8-jdk wget unzip

# ARG MAVEN_VERSION=3.9.6

# Download Maven
# RUN wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz && \
#     tar -zxvf apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
#     rm apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
#     mv apache-maven-${MAVEN_VERSION} /usr/lib/maven

# Set Maven environment variables
# ENV MAVEN_HOME=/usr/lib/maven
# ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"
# ENV PATH=$MAVEN_HOME/bin:$PATH

# Create application directory
# RUN mkdir -p /app

# Copy project
# COPY . /app

# Set working directory
# WORKDIR /app

# Build WAR
# RUN mvn install

# Deploy using Tomcat
# FROM tomcat:latest

# Copy WAR from builder stage
# COPY --from=builder /app/webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war

# Copy default web applications
# RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps



#===============================================================================
# Example 4: Maven and Tomcat on Ubuntu
#===============================================================================

# Build Stage
FROM ubuntu:20.04 AS build

# Disable interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install Java, Maven and required utilities
RUN apt-get update && apt-get install -y \
    openjdk-11-jdk \
    maven \
    wget \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set Java Home
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Build Maven project
RUN mvn clean package

# Verify WAR file
RUN ls -al /app/webapp/target



#===============================================================================
# Runtime Stage
#===============================================================================

FROM ubuntu:20.04

# Install Java and utilities
RUN apt-get update && apt-get install -y \
    openjdk-11-jdk \
    wget \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Java environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Download Tomcat
RUN wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.95/bin/apache-tomcat-9.0.95.tar.gz -O /tmp/tomcat.tar.gz && \
    mkdir /opt/tomcat && \
    tar xzvf /tmp/tomcat.tar.gz -C /opt/tomcat --strip-components=1 && \
    rm /tmp/tomcat.tar.gz

# Tomcat environment variables
ENV CATALINA_HOME=/opt/tomcat
ENV PATH=$CATALINA_HOME/bin:$PATH

# Expose Tomcat port
EXPOSE 8080

# Copy generated WAR file from build stage
COPY --from=build /app/webapp/target/webapp.war /opt/tomcat/webapps/webapp.war

# Start Tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
