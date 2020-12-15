---
title: "authenticationSourceFilter resource type"
description: "Filter based on the source of the authentication which is used to determine whether the listener is executed or not."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# authenticationSourceFilter resource type

Namespace: microsoft.graph

Filter based on the source of the authentication that is used to determine whether the listener is executed.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|includeApplications|String collection|Applications to include. These applications trigger the associated action when used as the client application in the authentication flow. The application identifer is the application's client id.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationSourceFilter"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.authenticationSourceFilter",
  "includeApplications": [
    "String"
  ]
}
```
