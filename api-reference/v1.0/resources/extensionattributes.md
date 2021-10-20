---
title: "extensionAttributes resource type"
description: "The **extensionAttributes** property of the device entity contains fifteen custom extension attribute properties."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "sandeo"
---

# extensionAttributes resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **extensionAttributes** property of the [device](device.md) resource contains fifteen custom extension attribute properties. This set of properties is mastered in cloud and may be set during creation or update of a device.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|extensionAttribute1|String| First customizable extension attribute. |
|extensionAttribute2|String| Second customizable extension attribute. |
|extensionAttribute3|String| Third customizable extension attribute. |
|extensionAttribute4|String| Fourth customizable extension attribute. |
|extensionAttribute5|String| Fifth customizable extension attribute. |
|extensionAttribute6|String| Sixth customizable extension attribute. |
|extensionAttribute7|String| Seventh customizable extension attribute. |
|extensionAttribute8|String| Eighth customizable extension attribute. |
|extensionAttribute9|String| Ninth customizable extension attribute. |
|extensionAttribute10|String| Tenth customizable extension attribute. |
|extensionAttribute11|String| Eleventh customizable extension attribute. |
|extensionAttribute12|String| Twelfth customizable extension attribute. |
|extensionAttribute13|String| Thirteenth customizable extension attribute. |
|extensionAttribute14|String| Fourteenth customizable extension attribute. |
|extensionAttribute15|String| Fifteenth customizable extension attribute. |

## Example REST operations

### Use case:  Write extensionAttributes on a device

``` JSON
PATCH https://graph.microsoft.com/v1.0/devices/{id}
Content-type: application/json

{
  "extensionAttributes": [
    "extensionAttribute1" : "extensionAttribute1-value",
    "extensionAttribute2" : "extensionAttribute2-value",
    "extensionAttribute10" : "extensionAttribute10-value",
    "extensionAttribute15" : "extensionAttribute15-value"
  ]
}
```

### Use case:  Get device with extensionAttributes

``` JSON
GET https://graph.microsoft.com/v1.0/devices?$select=extensionAttributes,id

HTTP/1.1 200 OK
{
    "id": "id-value",
    "extensionAttributes": {
      "extensionAttribute1": "string",
      "extensionAttribute2": "string",
      "extensionAttribute3": "string",
      "extensionAttribute4": "string",
      "extensionAttribute5": "string",
      "extensionAttribute6": "string",
      "extensionAttribute7": "string",
      "extensionAttribute8": "string",
      "extensionAttribute9": "string",
      "extensionAttribute10": "string",
      "extensionAttribute11": "string",
      "extensionAttribute12": "string",
      "extensionAttribute13": "string",
      "extensionAttribute14": "string",
      "extensionAttribute15": "string"
  }
}
```

### Use case: Get device using filter on extensionAttributes

``` JSON
GET https://graph.microsoft.com/v1.0/devices?$filter=extensionAttributes/extensionAttributes1 eq 'extensionAttributes1-value'&$count=true
ConsistencyLevel: eventual


{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#devices",
  "@odata.count": "long",
  "value": [
  {
    "accountEnabled": true,
    "alternativeSecurityIds": [{"@odata.type": "microsoft.graph.alternativeSecurityId"}],
    "approximateLastSignInDateTime": "String (timestamp)",
    "complianceExpirationDateTime": "String (timestamp)",
    "deviceId": "string",
    "deviceMetadata": "string",
    "deviceVersion": 1024,
    "displayName": "string",
    "extensionAttributes": {"@odata.type": "microsoft.graph.extensionAttributes"},
    "id": "string (identifier)",
    "isCompliant": true,
    "isManaged": true,
    "manufacturer": "string",
    "mdmAppId": "string",
    "model": "string",
    "onPremisesLastSyncDateTime": "String (timestamp)",
    "onPremisesSyncEnabled": true,
    "operatingSystem": "string",
    "operatingSystemVersion": "string",
    "physicalIds": ["string"],
    "profileType": "string",
    "systemLabels": ["string"],
    "trustType": "string"
   }
  ]
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "extensionAttributes resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
