---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

In this step, you'll design your web app by using Microsoft Graph Toolkit components and style it with CSS.

## Initialize the Login component

In **index.html** in the `<body></body>`section, add the following code under the provider.

```html
<div>
  <mgt-login />
</div>
```

## Create a title and column for the rest of the components

To make your app look structured, create a title and a column for each feature that will be added in the One Productivity Hub. In **index.html** under `<body></body>`, add the following HTML code inside the div, under the login component.

```HTML
<div class="features">

  <div class="header"><div class="title">
    <h2>One Productivity Hub</h2>
    <div class="row">
      <div class="column"><h3>Calendar events</h3></div>
      <div class="column"><h3>To-do tasks</h3></div>
      <div class="column"><h3>Files</h3></div>
    </div>
  </div></div>

  <div class="row" id="content">
    <div class="column" id="mgt-col"></div>
    <div class="column" id="mgt-col"></div>
    <div class="column" id="mgt-col"></div>
  </div>

</div>
```

### Agenda component

Under the div tagged with `class="row"`, add the Agenda component inside the first column div.

```HTML
<mgt-agenda />
```

### To-do component

Under the div tagged with `class="row"`, add the To-do component inside the second column div.

```HTML
<mgt-todo />
```

### FileList component

Under the div tagged with `class="row"`, add the File list component inside the third column div.

```HTML
<mgt-file-list />
```

## Style your web app with CSS

1. Create an **index.css** file under your project and add the following CSS code.

    ```css
    body,
    #root>div {
        background-color: #F3F2F1;
    }
    .features {
        min-height: 80vh;
        margin: 20px;
        background-color: #FFF;
        box-shadow: 0px 1.2px 3.6px rgba(0, 0, 0, 0.11), 0px 6.4px 14.4px rgba(0, 0, 0, 0.13);
        border-radius: 4px;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .header {
        display: flex;
        background-color: #f0f0f0;
    }
    .title {
        margin-top: 20px;
        margin-left: 10px;
        width: 100%;
    }
    .title h2 {
        font-size: 24px;
        padding-left: 5px;
        display: inline;
        font-weight: 600;
    }
    .title h3 {
        float: left;
        width: 32%;
        background:transparent;
        font-size: 16px;
        margin-bottom: 10px;
        padding-left: 10px;
        padding-top: 10px;
        color: #8A8886;
        font-weight: 600;
    }
    mgt-login {
        margin-left: 20px;
        --avatar-size: 60px;
        --font-family: 'Segoe UI';
        --font-size: 20px;
        --font-weight: 700;
        --color: black;
        --text-transform: none;
        --line2-font-size: 14px;
        --line2-font-weight: 400;
        --line2-color: #8A8886;
        --line2-text-transform: none;
    }
    #content, html, body {
        height: 98%;
      }
    #mgt-col {
      float: left;
      width: 32%;
      background:transparent;
      height:500px;
      overflow: hidden;
      padding: 5px;
      margin-top: 5px;
    }
    #mgt-col:hover {
      overflow-y: auto;
    }
    ```

1. In **index.html** within `<head></head>`, define the stylesheet link `href` as **index.css**.

    ```html
    <link rel='stylesheet' type='text/css' media='screen' href='index.css'>
    ```

1. Make sure that the final version of **index.html** is similar to the following.

    ```html
    <!DOCTYPE html>
      <html>
      <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>One Productivity Hub</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel='stylesheet' type='text/css' media='screen' href='index.css'>
        <script src='main.js'></script>
      </head>
      <body>
        <script src="https://unpkg.com/@microsoft/mgt@2.6.0/dist/bundle/mgt-loader.js"></script>
        <mgt-msal2-provider
            client-id="<YOUR_CLIENT_ID>"
            scopes="User.Read,
            User.ReadBasic.All,
            Calendars.Read,
            Files.Read,
            Files.Read.All,
            Sites.Read.All,
            Tasks.Read,
            Tasks.ReadWrite,
            People.Read">
        </mgt-msal2-provider>
        <div>
          <mgt-login />
        </div>
        <div class="features">
            <div class="header">
                <div class="title">
                    <h2>One Productivity Hub</h2>
                    <div class="row">
                        <div class="column"><h3>Calendar events</h3></div>
                        <div class="column"><h3>To-do tasks</h3></div>
                        <div class="column"><h3>Files</h3></div>
                    </div>
                </div>
            </div>
            <div class="row" id="content">
                <div class="column" id="mgt-col"><mgt-agenda /></div>
                <div class="column" id="mgt-col"><mgt-todo /></div>
                <div class="column" id="mgt-col"><mgt-file-list /></div>
            </div>
        </div>
      </body>
    </html>
    ```
