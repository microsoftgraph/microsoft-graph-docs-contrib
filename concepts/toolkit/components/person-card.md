---
title: "Person-Card component in the Microsoft Graph Toolkit"
description: "A Person-Card component is a flyout control to display more information relating to the mgt-person component viewed."
localization_priority: Normal
author: nmetulev
---

# Person-Card component in the Microsoft Graph Toolkit

A Person-Card component is a responsive flyout control to display more information relating to the `mgt-person` component viewed. There are two ways of activating the control:
* On hover of a `mgt-person` component
* On click of a `mgt-person` component
  
## Example

[jsfiddle example]()

```html
    <mgt-person person-query="me" person-card="hover"></mgt-person>
```

## Properties

The component utilizes the Microsoft Graph to provide additional details about the user. To define a user, you must utilize the `person-query` property of `mgt-person`.

| Property         | Data context                     | Description                                                                           |
| ---------------- | -------------------------------- | ------------------------------------------------------------------------------------- |
| `person-details` | `MicrosoftGraph.Person | object` | Person object as defined by Microsoft Graph, contianing details relating to the user. |
| `person-image`   | `png/jpg/svg`                    | Image relating to the person displayed in the card.                                   |



## Tempalates

The Person-Card component utilizes [templates](../templates.md) which allows you to add or replace portions of the component. To specify a template, wrap the mgt-person-card component with `<template>` The component currently supports a customizable additional section: 

```html
    <mgt-person person-query="me" show-name show-email person-card="hover">
      <template data-type="person-card">
        <mgt-person-card person-details="{{person}}" 
            person-image="{{personImage}}">
          <template data-type="additional-details">
            <h3>Stuffed Animal Friends:</h3>
            <ul>
              <li>Giraffe</li>
              <li>lion</li>
              <li>Rabbit</li>
            </ul>
          </template>
        </mgt-person-card>
      </template>
    </mgt-person>

```




## CSS custom properties

The `mgt-person-card` component defines the following CSS custom properties.

```css
mgt-person-card {
  --font-size: 14px;
  --font-weight: 600;
  --height: '100%';
  --background-color: transparent;
}
```

To learn more, see [styling components](../style.md).

## Microsoft Graph permissions

This component uses the [Person component](./person.md) to display the user and inherits all permissions. 

## Authentication

The Person-Card control uses the global authentication provider described in the [authentication documentation](./../providers.md). 
