#global module:false

"use strict"

module.exports = (grunt) ->
  grunt.loadNpmTasks "grunt-bower-task"
  grunt.loadNpmTasks "grunt-contrib-connect"
  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-contrib-watch"
  # grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.loadNpmTasks "grunt-exec"

  grunt.initConfig

    copy:
      foundation:
        files: [{
          expand: true
          cwd: "bower_components/foundation/css/"
          src: "normalize.min.css"
          dest: "vendor/css/"
        },
        {
          expand: true
          cwd: "bower_components/foundation/js/"
          src: "foundation.min.js"
          dest: "vendor/js/"
        },
        {
          expand: true
          cwd: "bower_components/foundation/js/vendor"
          src: "*"
          dest: "vendor/js/"
        },
        {
          expand: true
          cwd: "bower_components/foundation/scss/foundation"
          src: "**"
          dest: "_sass/foundation"
        },
        {
          expand: true
          cwd: "bower_components/foundation/scss/"
          src: "foundation.scss"
          dest: "_sass/"
        }]

    exec:
      jekyll:
        cmd: "jekyll build --trace"

    watch:
      options:
        livereload: true
      source:
        files: [
          "_drafts/**/*"
          "_includes/**/*"
          "_layouts/**/*"
          "_posts/**/*"
          "css/**/*"
          "js/**/*"
          "_config.yml"
          "*.html"
          "*.md"
        ]
        tasks: [
          "exec:jekyll"
        ]

    connect:
      server:
        options:
          port: 4000
          base: '_site'
          livereload: true

    # uglify:
    #   options:
    #     mangle:
    #       except: ['jQuery', 'Backbone']
    #   my_target:
    #     files:
    #       'js/output.min.js': ['vendor/js/*']

  grunt.registerTask "custom", [
    "copy"
    # "uglify"
  ]

  grunt.registerTask "build", [
    "custom"
    "exec:jekyll"
  ]

  grunt.registerTask "serve", [
    "build"
    "connect:server"
    "watch"
  ]

  grunt.registerTask "default", [
    "serve"
  ]
