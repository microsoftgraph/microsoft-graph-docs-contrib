---
title: "Getting started with Microsoft Graph Toolkit"
description: "Getting started with using Microsoft Graph Toolkit in your application."
localization_priority: Normal
author: elisenyang
---

# Getting started with Microsoft Graph Toolkit

The Microsoft Graph Toolkit components can be easily added to your web application, SharePoint web part, or Microsoft Teams tabs. The components are based on web standards and can be used in both plain JavaScript projects or with popular web frameworks such as Reach, Angular, Vue.js, and more.

You can watch this short video to see how quick and easy it is to get started with the Toolkit.

> [!VIDEO https://www.youtube-nocookie.com/embed/oZCGb2MMxa0]

## Set up your Microsoft 365 tenant
In order to develop with the Toolkit, you need a Microsoft 365 tenant. If you don't have one, you can get a Microsoft 365 developer subscription by joining the MIcrosoft 365 Developer Program. See the Microsoft 365 Developer Program documentation for instructions on how to join the program and configure your subscription.

## Set up your development environment
To develop with the Toolkit, you will need a text editor or IDE. You can use the editor or IDE of your choice or install and use Visual Studio Code for free. You will also need a modern web browser like Microsoft Edge, Google Chrome, or Firefox.

## Using Microsoft Graph Toolkit
You can use Microsoft Graph Toolkit in your application by referencing the loader directly (via unpkg) or by installing the npm package.

### Use via mgt-loader
To use the Toolkit via mgt-loader, add the reference in a script to your code:

```html
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
```

### Use via npm (ES6 modules)
Using the Toolkit via ES6 modules will give you full control of the bundling process and allow you to bundle only the code you need for your site. To use the ES6 modules, add the npm package to your project:

```bash
npm install @microsoft/mgt
```

#### Polyfills

If you're using the ES6 modules from the npm package, you will need to include polyfills in your project as they are not automatically included. Polyfills help to fill in missing browser capabilities in browsers that are still in the process of updating to support Web Component standards. To learn more, see polyfills. To install polyfills, run

```bash
npm install @webcomponents/webcomponents.js
```

The polyfills are already included if you are using the Toolkit via the mgt-loader script.

## Next Steps
You're now ready to start developing with Microsoft Graph Toolkit! The following guides are available to help you get started:
- Build a web application (plain JavaScript)
- Build a SharePoint web part
- Build a Microsoft Teams tab
- Use the Toolkit with React
- Use the Toolkit with Angular

