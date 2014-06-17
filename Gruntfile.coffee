module.exports = (grunt) ->
  grunt.initConfig
    pkg: '<json:package.json>'

    sass:
      dist:
        files:
          'css/main.css' : 'scss/main.scss'

    autoprefixer:
      dist:
        files:
          'css/main.css': 'css/main.css'

    coffee:
      compile:
        files:
          'js/main.js' : ['coffee/main.coffee']

    watch:
      scss:
        files: ['scss/*.scss'],
        tasks: ['sass', 'autoprefixer']
        options:
          spawn: false
          atBegin: true
      css:
        files: ['css/main.css'],
        options:
          livereload: true
      js:
        files: ['coffee/*.coffee'],
        tasks: ['coffee']
        options:
          spawn: false
          atBegin: true
      html:
        files: ['_site/*.html']
        options:
          livereload: true

  grunt.loadNpmTasks('grunt-contrib-sass')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-autoprefixer')
  grunt.loadNpmTasks('grunt-contrib-coffee')

  grunt.registerTask('default',['watch'])
