---
title: "Use Microsoft Graph Toolkit with React"
description: "How to get started using Microsoft Graph Toolkit in a React application."
localization_priority: Normal
author: elisenyang
---

# Using Microsoft Graph Toolkit with React

Microsoft Graph Toolkit components work great with web frameworks like React in addition to vanilla JavaScript and HTML. You can use the components directly in React, but proper interop between web components and React components requires a bit of extra work. We recommend using `mgt-react`, a library that wraps and exports all of the Microsoft Graph Toolkit components as React components. Both methods are shown below.

1. Create a React application
2. Add Microsoft Graph Toolkit

## Create a React application

There are several ways to create a web application with React and you can do this however you choose. The easiest way to create a new react application is to use [Create React App](https://reactjs.org/docs/create-a-new-react-app.html).

Run the following command:
```bash
npx create-react-app <YOUR_PROJECT_NAME> --template typescript
```




