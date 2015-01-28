var gulp = require('gulp');
var gulpConcat = require('gulp-concat');
var stylus = require('gulp-stylus');
var uglify = require('gulp-uglify');
var csscomb = require('gulp-csscomb');
var cssmin = require('gulp-csso');
var rename = require('gulp-rename');
var livereload = require('gulp-livereload');
var riot = require('gulp-riot');

var paths = {
    scripts: 'src/js/common.js',
    styles: ['src/stylus/*.styl', 'src/stylus/**/*.styl'],
    tags: 'src/tags/**/*.tag',
    html: '*.html'
};

gulp.task('uglify', function () {
    return gulp.src(paths.scripts)
        .pipe(uglify({mangle: true, compress: true}))
        .pipe(rename({suffix: '.min'}))
        .pipe(gulp.dest('./assets/js'))
        .pipe(livereload());
});

gulp.task('stylus', function () {
    return gulp.src('./src/stylus/style.styl')
        .pipe(stylus())
        .pipe(csscomb())
        .pipe(gulp.dest('./assets/css'))
        .pipe(cssmin())
        .pipe(rename({
            basename: 'style',
            suffix: '.min',
            ext: '.css'
        }))
        .pipe(gulp.dest('./assets/css'))
        .pipe(livereload());
});

gulp.task('tag', function () {
    return gulp.src(paths.tags)
        .pipe(riot())
        .pipe(gulpConcat('tags.min.js'))
        /*.pipe(uglify({mangle: true, compress: true}))*/
        .pipe(gulp.dest('./assets/js/'))
        .pipe(livereload());
});

gulp.task('html', function () {
    return gulp.src(paths.html)
        .pipe(livereload());
});

gulp.task('watch', function () {
    livereload.listen();
    gulp.watch(paths.html, ['html']);
    gulp.watch(paths.scripts, ['uglify']);
    gulp.watch(paths.styles, ['stylus']);
    gulp.watch(paths.tags, ['tag']);
});

gulp.task('default', ['watch', 'tag', 'uglify', 'stylus']);
