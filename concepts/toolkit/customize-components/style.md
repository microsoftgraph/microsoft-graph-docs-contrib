---
title: "Styling components in the Microsoft Graph Toolkit"
description: "Use CSS custom properties to modify the Microsoft Graph Toolkit component styles."
ms.localizationpriority: medium
author: sebastienlevert
---

# Styling components in the Microsoft Graph Toolkit

Each Microsoft Graph Toolkit component documents a set of [CSS custom properties](https://developer.mozilla.org/docs/Web/CSS/Using_CSS_custom_properties) that you can use to change the look and feel of certain elements. You can find the available custom CSS properties in each component docs. For example:

```css
.person {
  --person-avatar-size: 34px;
}
```

```html
<mgt-person class="person" person-query="me" view="fourlines" id="online" show-presence></mgt-person>
```

You can't style internal elements of a component unless you provide a CSS custom property. The component child elements are hosted in a [shadow dom](https://developer.mozilla.org/docs/Web/Web_Components/Using_shadow_DOM).

For more flexibility, consider using [custom templates](./templates.md).

## Apply themes

Two themes are available - `light` and `dark`. These themes are supported automatically because the mgt components use [Fluent UI web elements](/fluent-ui/web-components/). By default, all components are in `light` theme. To switch to `dark` theme, you can do it globally for the entire document by using the `mgt-theme-toggle` component, or you can update the theme for a component by setting the custom CSS token values on the component.

### Example 1: Global theme using mgt-theme-toggle

Using the [mgt-theme-toggle](../components/theme-toggle.md) component, you can set the theming for the document by placing it anywhere that's convenient for your theming experience. This component will render a toggle that you can use to switch between `light` and `dark` modes.

```html
<body>
  <mgt-theme-toggle></mgt-theme-toggle>
  <header><mgt-login></mgt-login></header>
  <article><mgt-agenda></mgt-agenda></article>
  <footer></footer>
</body>
```

### Example 2: Theming a component programatically without the theme-toggle

You can theme an individual component programmatically without using the `theme-toggle` component. This is achieved by calling the `applyTheme` function from `@microsoft/mgt` that takes in the mode as `light` or `dark` and the HTML element. By default, all elements are rendered in the `light` theme.

#### Setting specific elements to dark theme

You can set the second `mgt-login` component to `dark` theme and leave the other two in `light` theme.

```html
<mgt-login id="login-one"></mgt-login>
<mgt-login id="login-two"></mgt-login>
<mgt-login id="login-one"></mgt-login>
```

```javascript
import { applyTheme } from "@microsoft/mgt";

const loginTwo = document.querySelector("#login-two");

if (loginTwo) {
  applyTheme("dark", loginTwo);
}
```

### Example 3: Customize CSS tokens of a component

You can use several CSS tokens to style a component if you want to override the current theme colors. Check the particular component page to get the list of tokens that are available.

> **Note:** customizing these tokens means that your set values are the default values that are used and using the `mgt-theme-toggle` component will have no effect.

```html
<mgt-people-picker class="people-picker"></mgt-people-picker>
```

```css
.people-picker {
  --people-picker-selected-option-background-color: orange;
  --people-picker-selected-option-highlight-background-color: red;
  --people-picker-dropdown-background-color: blue;
  --people-picker-dropdown-result-background-color: yellow;
  --people-picker-dropdown-result-hover-background-color: gold;
  --people-picker-dropdown-result-focus-background-color: green;
  --people-picker-no-results-text-color: orange;
  --people-picker-input-background: gray;
  --people-picker-input-border-color: yellow;
  --people-picker-input-hover-background: green;
  --people-picker-input-hover-border-color: red;
  --people-picker-input-focus-background: purple;
  --people-picker-input-focus-border-color: orange;
  --people-picker-input-placeholder-focus-text-color: yellow;
  --people-picker-input-placeholder-hover-text-color: gold;
  --people-picker-input-placeholder-text-color: white;
  --people-picker-search-icon-color: yellow;
  --people-picker-remove-selected-close-icon-color: blue;
  /** You can also change the person tokens **/
  --person-line1-text-color: blue;
  --person-line2-text-color: red;
}
```

### Example 4: Customize Fluent UI CSS tokens

You can customize the tokens used by Fluent UI to style the fluent UI component used in an `mgt` component. Fluent UI Web Components provides first-class support for Design Tokens and makes setting, getting, and using Design Tokens simple.

For details about how to customize the Fluent UI web components, see [Design Tokens](/fluent-ui/web-components/design-system/design-tokens).

Alternatively, you can override existing design token values with your own values. We don't recommend this practice because the value you set will be used throughout the DOM where an `mgt` component with an underlying Fluent UI element is used. It will not change in `light` or `dark` theme modes.

```html
<mgt-login></mgt-login>
```

```css
body {
  /**
  * Overrides the default #ffffff color for dark theme and #000000 color for light theme
  */
  --neutral-foreground-rest: yellow !important;
}
```

In `light` theme mode:

![Fluent UI design token value changed to yellow in light mode](../images/login-fluentui-override.png)

In `dark` theme mode:

![Fluent UI design token value changed to yellow in dark mode](../images/login-fluentui-override-dark.png)
