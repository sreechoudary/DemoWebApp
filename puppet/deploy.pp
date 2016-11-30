class deploywar {
    exec { 'deploywar':
        command => "/usr/bin/wget -O /tmp/tomcatApp.war --timestamping <artifactoryutl>/PathToFile/tomcatApp.war",
        cwd => "/tmp",
    }

    file { "/opt/wildfly/standalone/deployments/tomcatApp.war":
        ensure => present,
        source => "/tmp/tomcatApp.war",
        require => Exec["tomcatApp.war"]
    }
}

include deploywar