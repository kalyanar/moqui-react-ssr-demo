<!doctype html>
<html>
<head><title>React Redux Starter Kit</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="shortcut icon" href="${ec.context.get('basePath')}/dist/favicon.ico">
    <link href="${ec.context.get('basePath')}/dist/${ec.context.cssFileMap['app.'].getFileName()}" rel="stylesheet">
</head>
<body>
    <script>
        <#if storeState?exists>
            window.___INITIAL_STATE__ = ${storeState};
        </#if>
        <#if basePath?exists>
            window.__APP_BASE_PATH__ = '${basePath}';
        </#if>
    </script>

    <div id="root" style="height: 100%">${content}</div>
    <script type="text/javascript" src="${basePath}/dist/${ec.context.jsBrowserFileMap['vendor.'].getFileName()}"></script>
    <script type="text/javascript" src="${basePath}/dist/${ec.context.jsBrowserFileMap['app.'].getFileName()}"></script>
</body>
</html>