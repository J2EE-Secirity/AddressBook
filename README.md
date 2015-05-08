Контакты (Spring version: 3.0.5.RELEASE)
========

###Условия (настройка) установки/запуска

1. Нужен maven 2.x
2. Подходит Tomcat 7.X
3. Контекст для деплоя на томкат "AddressBook"
4. Порт для деплоя на томкат "8081"
5. При запуске приложение автоматически должно переходить на URL: [http://localhost:8081/AddressBook/list?sort=fio](http://localhost:8081/AddressBook/list?sort=fio) (это нужно чтобы избежать 500-ошбки со стороны сервера)


###Цели

* В этом приложении демонстрируются правила защищенного доступа (Spring Security) которые прописываются в XML-файле конфигурации


###[ jdbc.properties ]

* `src/main/webapp/WEB-INF/jdbc.properties`
- jdbc.driverClassName= com.mysql.jdbc.Driver
- jdbc.dialect=org.hibernate.dialect.MySQLDialect
- jdbc.databaseurl=jdbc:mysql://localhost:3306/addressbook
- jdbc.username=addressbook (root)
- jdbc.password=1234        (1111)


###Конфиогурация Spring(а) выполняется черех XML

* `src/main/webapp/WEB-INF/web.xml`
* `src/main/webapp/WEB-INF/spring/`: 'servlet-context.xml', 'data.xml', 'security.xml', 'appServer/controllers.xml'
