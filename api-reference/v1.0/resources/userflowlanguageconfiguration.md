---
title: "userFlowLanguageConfiguration resource type"
description: "Allows a user flow to support multiple languages."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# userFlowLanguageConfiguration resource type

Namespace: microsoft.graph

Allows a user flow to support the use of multiple languages.

For [Microsoft Entra user flows](/azure/active-directory/external-identities/user-flow-customize-language), you can only use the built-in languages provided by Microsoft. User flows for Microsoft Entra ID support defining the language and strings shown to users as they go through the journeys you configure with your user flows.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/userflowlanguageconfiguration-get.md)|[userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md)|Read the properties and relationships of a [userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md) object. These objects represent a language available in a user flow.|
|[List default pages](../api/userflowlanguageconfiguration-list-defaultpages.md)|[userFlowLanguagePage](../resources/userflowlanguagepage.md) collection|Get the userFlowLanguagePage resources from the defaultPages navigation property. Represents the default user journey in a user flow.|
|[List overrides pages](../api/userflowlanguageconfiguration-list-overridespages.md)|[userFlowLanguagePage](../resources/userflowlanguagepage.md) collection|Get the userFlowLanguagePage resources from the overridesPages navigation property. Represents a custom experience for a user journey in a user flow.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The language name to display. This property is read-only.|
|id|String|The identifier of the language. This field is Language ID tag [RFC 5646](https://tools.ietf.org/html/rfc5646) compliant and must be a documented Language ID.|
|isEnabled|Boolean|Indicates whether the language is enabled within the user flow.|


## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|defaultPages|[userFlowLanguagePage](../resources/userflowlanguagepage.md) collection|Collection of pages with the default content to display in a user flow for a specified language. This collection doesn't allow any kind of modification.|
|overridesPages|[userFlowLanguagePage](../resources/userflowlanguagepage.md) collection|Collection of pages with the overrides messages to display in a user flow for a specified language. This collection only allows you to modify the content of the page, any other modification isn't allowed (creation or deletion of pages).|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userFlowLanguageConfiguration",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.userFlowLanguageConfiguration",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "displayName": "String"
}
```
