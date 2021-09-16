const ejs = require("gulp-ejs")
const { src, dest, watch, parallel, series } = require('gulp');
const filter = require('gulp-filter');
var rename = require("gulp-rename");
const debug = require('gulp-debug');
const del = require('del');

const translate = lang => (obj => obj[lang])
const ctx = lang => ({
  lang: lang,
  t: obj => obj[lang],
  en: x=>lang=='en'?x:'',
  de: x=>lang=='de'?x:''
})

const processEn = () => src('site/index.html')
  .pipe(ejs(ctx('en'), {}))
  .pipe(dest('docs'));

const processDe = () => src('site/index.html')
  .pipe(ejs(ctx('de'), {}))
  .pipe(rename("index-de.html"))
  .pipe(dest('docs'));

function processOthers() {
  return src(['site/**', '!**/*.html'])
    .pipe(dest('docs'));
}

function clean() {
  return del('docs/**');
}

exports.default = function () {
  // You can use a single task
  watch('site/**', { ignoreInitial: false }, series(clean, parallel(processOthers, processEn, processDe)));
  //return watch('site/*.html', { ignoreInitial: false }, clean);
};