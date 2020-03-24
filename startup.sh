sudo yum update -y
sudo    yum install -y java-1.8.0-openjdk-devel
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins
sudo yum remove java-1.7.0-openjdk
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk.x86_64
export PATH=$JAVA_HOME/bin:$PATH
sudo service jenkins start
