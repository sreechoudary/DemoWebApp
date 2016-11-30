class deploywar {
    exec { 'deploywar':
        command => "/usr/bin/wget -O /tmp/tomcatApp.war --timestamping http://localhost:8081/artifactory/libs-snapshot-local/org/kohsuke/test/xyz/1.0-SNAPSHOT/tomcatApp.war",
        cwd => "/tmp",
    }

    file { "/var/lib/tomcat7/webapps/tomcatApp.war":
        ensure => present,
        source => "/tmp/tomcatApp.war",
        require => Exec["tomcatApp.war"]
    }
}

include deploywar