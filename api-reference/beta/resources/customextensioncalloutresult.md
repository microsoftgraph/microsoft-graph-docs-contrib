---
title: "customExtensionCalloutResult resource type"
description: "Indicates the result of an an API request to the custom extension endpoint. This object is used by the appliedEventListeners object of sign-ins. This object is used by the appliedEventListeners object of sign-ins."
author: "junrlin"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# customExtensionCalloutResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the result of an API request to the [custom authentication extension](customauthenticationextension.md) endpoint. This object is used by the **appliedEventListeners** object of [sign-ins](../resources/signin.md).

Inherits from [authenticationEventHandlerResult](../resources/authenticationeventhandlerresult.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|calloutDateTime|DateTimeOffset|When the API transaction was initiated, the date and time information uses ISO 8601 format and is always in UTC time. Example: midnight on Jan 1, 2014, is reported as `2014-01-01T00:00:00Z`.|
|customExtensionId|String|Identifier of the custom extension that was called.|
|errorCode|Int32|Error code that was returned when the last API attempt failed.|
|httpStatus|Int32|The HTTP status code that was returned by the target API endpoint after the last API attempt.|
|numberOfAttempts|Int32|The number of API calls to the customer's API.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionCalloutResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionCalloutResult",
  "customExtensionId": "String",
  "calloutDateTime": "String (timestamp)",
  "numberOfAttempts": "Integer",
  "httpStatus": "Integer",
  "errorCode": "Integer"
}
```

