---
title: "Person-Card component in the Microsoft Graph Toolkit"
description: "A Person-Card component is a component to display more information relating to a person."
localization_priority: Normal
author: vogtn
---

# Person-Card component in the Microsoft Graph Toolkit

A Person-Card component is a responsive component to display more information relating to a person. It is generally used as a flyout on the `mgt-person` component.

See [mgt-person docs](./person.md) for more information on the `mgt-person` component.
  
## Example

```html
<mgt-person-card person-details="{personObject}" person-image="imgUrl"></mgt-person-card>
```

## Properties

The component utilizes the Microsoft Graph to provide additional details about the user. To define a user, you must utilize the `person-query` property of `mgt-person`.

| Attribute         | type                     | Description                                                                           |
| ---------------- | -------------------------------- | ------------------------------------------------------------------------------------- |
| `person-details` | `MicrosoftGraph.User` <br> `MicrosoftGraph.Person` <br> `MicrosoftGraph.Contact` | Person object as defined by Microsoft Graph, containing details relating to the user. |
| `person-image`   | `png/jpg/svg`                    | Image relating to the person displayed in the card.                                   |



## Templates

The Person-Card component utilizes [templates](../templates.md) which allow you to add or replace portions of the component. To specify a template, include a `<template>` element inside of a component and set the `data-type` value to one of the following:

| Data type | Data context | Description |
| --- | --- | --- |
| `default` | `person`: the person details object <br> `personImage`: the url of the image | The default template replaces the entire component with your own. |
| `additional-details` | `person`: the person details object <br> `personImage`: the url of the image | The template used to add additional content to the card |

For example, you can use a template to customize the component attached to the `mgt-person` component and a template to add additional details in the card: 

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
