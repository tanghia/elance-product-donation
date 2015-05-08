dataSource {
	pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
	username = "root"
}
hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = false
	cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
	//cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
	singleSession = true // configure OSIV singleSession mode
}

// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost:3306/productdonation?useUnicode=yes&characterEncoding=UTF-8"
            username = "root"
            password = "123456"
		}
	}
	test {
		dataSource {
			dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost:3306/productdonation?useUnicode=yes&characterEncoding=UTF-8"
            username = "root"
            password = "123456"
		}
	}
	production {
		dataSource {
			ddbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
			url = "jdbc:mysql://mysql23538-elance-nghiatt.jelastic.skali.net/productdonation?useUnicode=yes&characterEncoding=UTF-8"
			password="aPZlDuqj8p"
			pooled = true
			properties {
				maxActive = -1
				minEvictableIdleTimeMillis=1800000
				timeBetweenEvictionRunsMillis=1800000
				numTestsPerEvictionRun=3
				testOnBorrow=true
				testWhileIdle=true
				testOnReturn=true
				validationQuery="SELECT 1"
			}
		}
	}
}
