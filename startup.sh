sudo yum update -y
sudo yum remove java-1.7.0-openjdk -y
sudo yum install -y java-1.8.0-openjdk.x86_64
sudo yum install -y java-1.8.0-openjdk-devel
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins
sudo service jenkins start
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk.x86_64
export PATH=$JAVA_HOME/bin:$PATH
sudo yum install git -y
sudo yum install docker -y
sudo service docker start
sudo wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
sudo tar -xvf apache-maven-3.6.3-bin.tar.gz
sudo mv apache-maven-3.6.3 /opt
rm -f apache-maven-3.6.3-bin.tar.gz
export MAVEN_HOME=/opt/apache-maven-3.6.3
export PATH=$MAVEN_HOME/bin:$PATH
sudo wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.0.0.1744-linux.zip
sudo unzip sonar-scanner-cli-4.0.0.1744-linux.zip
sudo mv sonar-scanner-4.0.0.1744-linux /opt
rm -f  sonar-scanner-cli-4.0.0.1744-linux.zip
sudo docker pull sonarqube
sudo docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube 
sudo wget https://sonatype-download.global.ssl.fastly.net/nexus/3/nexus-3.0.2-02-unix.tar.gz
sudo tar -zxvf nexus-3.0.2-02-unix.tar.gz
sudo mv nexus-3.0.2-02 /opt/nexus
sudo useradd nexus
sudo chown -R nexus:nexus /opt/nexus
sudo ln -s /opt/nexus/bin/nexus /etc/init.d/nexus


