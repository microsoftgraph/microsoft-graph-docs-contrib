---
title: "Styling the Microsoft Graph Toolkit"
description: "Use CSS custom properties to modify the component styles"
localization_priority: Normal
author: nmetulev, beth-panx
---

# Styling components in the Microsoft Graph Toolkit

## Use CSS custom properties

Each component documents a set of [CSS custom properties](https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties) that you can use to change the look and feel of certain elements. You can find the available custom CSS properties in each component docs. For example:

```css
mgt-person {
  --avatar-size: 34px;
}
```

You can't style internal elements of a component unless you provide a CSS custom property. The component child elements are hosted in a [shadow dom](https://developer.mozilla.org/en-US/docs/Web/Web_Components/Using_shadow_DOM).

For more flexibility, consider using [custom templates](./templates.md).

## Apply themes

There are two themes available - light and dark. By default, all components are styled with light theme. To switch to dark theme, you can simply apply `class="mgt-dark"` to the desired section of your HTML page. The components inside of that sections will have dark theme apply to them. Here are some examples of how themes will apply based on how you structure your HTML:

Example 1: Global theme
```html
<body class="mgt-light">
    // light theme will apply to all components in this section
    <header><mgt-login></mgt-login></header>
    <article><mgt-agenda></mgt-agend></article>
    <footer></footer>
</body>
```

Example 2: Individual component theme
```html
<mgt-person-card class="mgt-dark"></mgt-person-card>
```

Example 3: Reginal theme
```html
<div class="mgt-light">
    <header class="mgt-dark">
        // login component will have dark theme
        <mgt-login></mgt-login>
    </header>
    <article>
        // agenda component will have light theme
        <mgt-agenda></mgt-agenda>
    </article>
</div>
```

Example 4: Customize css with theme
```html
<mgt-people-picker class="mgt-dark custom-class"></mgt-people-picker>
```
```css
mgt-people-picker.custom-class {
    --input-background-color: $custom-background-color;
    --input-border: $custom-input-border;
}
```

## Disable the shadow dom (experimental)

You can disable the shadow dom, and directly style internal elements using normal browser stylesheets, by setting the static property `useShadowDom` of the `MgtBaseComponent` class to false before using any MGT tags.


```html
<script type="module">
  import { MgtBaseComponent } from './dist/es6/components/baseComponent.js';
   MgtBaseComponent.useShadowRoot = false;
</script>

<script type="module" src="./dist/es6/components/mgt-tasks/mgt-tasks.js"></script>
````
