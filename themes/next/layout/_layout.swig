<!DOCTYPE html>

{# NexT version #}
{% set version = next_env('version') %}

{# Language & Config #}
{% set title = __('title') !== 'title' && __('title') || config.title %}
{% set subtitle = __('subtitle') !== 'subtitle' && __('subtitle') || config.subtitle %}
{% set author = __('author') !== 'author' && __('author') || config.author %}
{% set description = __('description') !== 'description' && __('description') || config.description %}

{% set html_class = 'theme-next ' + theme.scheme %}
{% if theme.motion.enable %}
{% set html_class = html_class + ' use-motion' %}
{% endif %}

<html class="{{ html_class | lower }}" lang="{{ config.language }}">
<head>
  {{ partial('_partials/head/head.swig', {}, {cache: theme.cache.enable}) }}
  {% include '_partials/head/head-unique.swig' %}
  <title>{% block title %}{% endblock %}</title>
  {% include '_third-party/analytics/index.swig' %}
  {{ partial('_scripts/noscript.swig', {}, {cache: theme.cache.enable}) }}
</head>

<body itemscope itemtype="http://schema.org/WebPage" lang="{{ page.lang || page.language || config.language }}">

  {% set container_class = 'container' %}
  {% if theme.sidebar.position %}
  {% set container_class = container_class + ' sidebar-position-' + theme.sidebar.position %}
  {% endif %}

  <div class="{{ container_class }} {% block page_class %}{% endblock %}">
    <div class="headband"></div>

    <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
      <div class="header-inner">{% include '_partials/header/index.swig' %}</div>
    </header>

    {{ partial('_partials/github-banner.swig', {}, {cache: theme.cache.enable}) }}

    <main id="main" class="main">
      <div class="main-inner">
        <div class="content-wrap">
          {% if theme.scheme === 'Pisces' || theme.scheme === 'Gemini' %}
          {% include '_partials/header/sub-menu.swig' %}
          {% endif %}
          <div id="content" class="content">
            {% block content %}{% endblock %}
          </div>
          {% include '_partials/comments.swig' %}
        </div>
        {% if theme.sidebar.display !== 'remove' %}
        {% block sidebar %}{% endblock %}
        {% endif %}
      </div>
    </main>

    <footer id="footer" class="footer">
      <div class="footer-inner">
        {{ partial('_partials/footer.swig', {}, {cache: theme.cache.enable}) }}
        {% include '_third-party/analytics/analytics-with-widget.swig' %}
        {% block footer %}{% endblock %}
      </div>
    </footer>

    {% if not theme.sidebar.b2t %}
    <div class="back-to-top">
      <i class="fa fa-arrow-up"></i>
      {% if theme.sidebar.scrollpercent %}
      <span id="scrollpercent"><span>0</span>%</span>
      {% endif %}
    </div>
    {% endif %}

    {% if theme.needmoreshare2.enable and theme.needmoreshare2.float.enable %}
    <div id="needsharebutton-float">
      <span class="btn">
        <i class="fa fa-share-alt" aria-hidden="true"></i>
      </span>
    </div>
    {% endif %}

    {% if theme.baidushare and theme.baidushare.type === "slide" %}
    <div>
      {% include '_partials/share/baidushare.swig' %}
    </div>
    {% endif %}

    {% if theme.add_this_id %}
    <div>
      {% include '_partials/share/add-this.swig' %}
    </div>
    {% endif %}
  </div>

  {% include '_scripts/vendors.swig' %}
  {% include '_scripts/commons.swig' %}

  {% set scheme_script = '_scripts/schemes/' + theme.scheme | lower + '.swig' %}
  {% include scheme_script %}

  {% block script_extra %}{% endblock %}

  {% include '_scripts/boostrap.swig' %}

  {% include '_third-party/comments/index.swig' %}
  {% include '_third-party/search/index.swig' %}
  {% include '_third-party/analytics/lean-analytics.swig' %}
  {% include '_third-party/analytics/firestore.swig' %}
  {% include '_third-party/math/index.swig' %}
  {% include '_third-party/pdf.swig' %}
  {% include '_third-party/baidu-push.swig' %}
  {% include '_third-party/schedule.swig' %}
  {% include '_third-party/needsharebutton.swig' %}
  {% include '_third-party/rating.swig' %}
  {% include '_third-party/pangu.swig' %}
  {% include '_third-party/scroll-cookie.swig' %}
  {% include '_third-party/exturl.swig' %}
  {% include '_third-party/bookmark.swig' %}
  {% include '_third-party/copy-code.swig' %}

  <!-- 背景  -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-backstretch/2.0.4/jquery.backstretch.min.js"></script>
  <!-- 鼠标特效  -->
  <script type="text/javascript" src="/js/src/fuqiangtexiao.js"></script>
  <script>
    $("body").backstretch([
      "http://img.netbian.com/file/2018/0722/93d1af25f76bc9974dd84c2e033b0eb1.jpg",
      "https://ws3.sinaimg.cn/large/006tKfTcgy1g0ndcet43gj31hc0u0wkm.jpg",
      "http://pic1.win4000.com/wallpaper/2019-02-11/5c614108eb245.jpg",
      "https://ws1.sinaimg.cn/large/006tKfTcgy1g0ndcl7waoj31hc0u0gur.jpg",
      "https://ws3.sinaimg.cn/large/006tKfTcgy1g0ndc9u62mj31hc0u0aix.jpg",
      "http://pic1.win4000.com/wallpaper/2019-02-11/5c61410aedcc8.jpg",
      "http://pic.bizhi360.com/bbpic/92/6792.jpg",
      "https://ws1.sinaimg.cn/large/006tKfTcgy1g0nd9gtlw2j31hc0u0agf.jpg",
      "https://ws1.sinaimg.cn/large/006tKfTcgy1g0nd9buoggj31hc0u0n66.jpg",
      "https://ws3.sinaimg.cn/large/006tKfTcgy1g0nd7jspolj31hc0u0dlw.jpg",
      "https://ws1.sinaimg.cn/large/006tKfTcgy1g0nddlzpa0j31hc0u0afu.jpg",
      "https://ws4.sinaimg.cn/large/006tKfTcgy1g0nddhsiusj31hc0u0guj.jpg",
      "https://ws2.sinaimg.cn/large/006tKfTcgy1g0nddc22lzj31hc0u0k0h.jpg",
      "https://ws1.sinaimg.cn/large/006tKfTcly1g0n55xgke5j31hc0u0wvl.jpg",
      "https://ws1.sinaimg.cn/large/006tKfTcgy1g0n59uo1ocj31400p0drg.jpg",
      "https://ws4.sinaimg.cn/large/006tKfTcgy1g0nd4irib0j31hc0u0gur.jpg",
      "https://ws2.sinaimg.cn/large/006tKfTcgy1g0nd6pa8ffj31hc0u0dot.jpg",
      "https://ws3.sinaimg.cn/large/006tKfTcgy1g0nd7jspolj31hc0u0dlw.jpg",
      "https://ws3.sinaimg.cn/large/006tKfTcgy1g0nd7bhccij31hc0u0wka.jpg",
      "https://ws1.sinaimg.cn/large/006tKfTcgy1g0nd78gxbbj31hc0u0wnm.jpg",
      "https://ws4.sinaimg.cn/large/006tNc79gy1g04od3wnk6j31400p076d.jpg",
      "https://ws1.sinaimg.cn/large/006tNc79gy1g04oe716mvj31hc0u0tmf.jpg",
      "https://ws1.sinaimg.cn/large/006tNc79gy1g04of03rw8j31hc0u0goq.jpg",
      "http://pic1.win4000.com/wallpaper/2018-12-22/5c1ddc1a09154.jpg",
      "https://ws4.sinaimg.cn/large/006tKfTcgy1g0ndaammv8j31hc0u0agi.jpg",
      "http://pic1.win4000.com/wallpaper/2018-12-22/5c1ddc169ce59.jpg",
      "https://ws4.sinaimg.cn/large/006tKfTcgy1g0ndadmlwgj31hc0u0thu.jpg",
      "https://ws4.sinaimg.cn/large/006tKfTcgy1g085eqfdoxj31hc0u0hdt.jpg",
      "https://ws2.sinaimg.cn/large/006tKfTcgy1g0ndantnpaj31hc0u0n33.jpg",
    ], {
      duration: 10000,
      fade: 4000,
      animateFirst: !0
    });
  </script>
  <!--从上到下依次是：
m蓝色美女1："http://img.netbian.com/file/2018/0722/93d1af25f76bc9974dd84c2e033b0eb1.jpg",
m2：    "http://pic1.win4000.com/wallpaper/2019-02-11/5c614108eb245.jpg",
m3：    "http://pic1.win4000.com/wallpaper/2019-02-11/5c61410aedcc8.jpg",
风景1：http://pic.bizhi360.com/bbpic/92/6792.jpg
f2
f3
f4
f5
v字仇杀队1，
v2
v3
x星空1
x2
x3
-->
  <script type="text/javascript" src="/js/src/instantclick.min.js" data-no-instant></script>
  <script data-no-instant>InstantClick.init()</script>
  <!--崩溃欺骗-->
  <script type="text/javascript" src="/js/src/crash_cheat.js"></script>
</body>

</html>
