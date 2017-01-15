# Ruleta (Nnodes)

Aplicacion se encuentra en Heroku: [App Ruleta](https://ruleta-nnodes.herokuapp.com/).

Debido a las limitaciones de 'Heroku Scheduler', el proceso que inicia una nueva ronda se ejecuta cada 10 minutos.

Para la correcta ejecución, se sugiere utilizar el ambiente de desarrollo local en 'development'.

La vista para ver a los jugadores se encuentra en [Vista Jugadores](https://ruleta-nnodes.herokuapp.com/players).

# Instrucciones de instalacion
  1. En terminal de linux ingresar al directorio del proyecto
  
  2. Ejecutar comando 'bundle'
  
  3. Settear environment variable: RAILS_ENV=development
  
  4. Ajustar la configuracion de base de datos PostgreSQL en el archivo de configuración database.yml (/config) con las credenciales correspondientes a 'development'
  
  5. Ejecutar los comandos:
  
    1. rake db:create
    
    2. rake db:migrate
    
    3. rake db:seed
    
  
  6. Ejecutar el comando 'whenever --update-crontab --set environment=development'
  
  7. Ingresar a localhost:3000 para ver la aplicacion
