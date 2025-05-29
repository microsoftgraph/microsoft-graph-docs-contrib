---
title: "enrollmentTimeDeviceMembershipTarget resource type"
description: "The EnrollmentTimeDeviceMembershipTarget entity represents the targets that devices will become members of when enrolled with the associated profile. The only device membership targets supported at this time is static security groups."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# enrollmentTimeDeviceMembershipTarget resource type

Namespace: microsoft.graph
> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


The EnrollmentTimeDeviceMembershipTarget entity represents the targets that devices will become members of when enrolled with the associated profile. The only device membership targets supported at this time is static security groups.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|targetType|[enrollmentTimeDeviceMembershipTargetType](../resources/intune-deviceconfigv2-enrollmenttimedevicemembershiptargettype.md)|The type of the targets that devices will become members of when enrolled with the asociated profile. Possible values are staticSecurityGroup. Default value : unknown. Possible values are: `unknown`, `staticSecurityGroup`, `unknownFutureValue`.|
|targetId|String|The unique identifiers of the targets that devices will become members of when enrolled with the asociated profile.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.enrollmentTimeDeviceMembershipTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.enrollmentTimeDeviceMembershipTarget",
  "targetType": "String",
  "targetId": "String"
}
```
