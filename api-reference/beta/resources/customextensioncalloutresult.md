---
title: "customExtensionCalloutResult resource type"
description: "Indicates the result of API request to the custom extension endpoint."
author: "junrlin"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# customExtensionCalloutResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the result of API request to the custom extension endpoint.

Inherits from [authenticationEventHandlerResult](../resources/authenticationeventhandlerresult.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|calloutDateTime|DateTimeOffset|Date and time (UTC) the API transaction was initiated. Example: midnight on Jan 1, 2014 is reported as 2014-01-01T00:00:00Z.|
|customExtensionId|String|ID of the custom extension that was called.|
|errorCode|Int32|Error code that was generated as a result of a failure with the API transaction of the last attempt.|
|httpStatus|Int32|The HTTP status code returned by the target API endpoint of the last attempt.|
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

