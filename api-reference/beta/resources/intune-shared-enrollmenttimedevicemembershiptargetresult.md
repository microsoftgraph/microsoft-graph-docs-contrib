---
title: "enrollmentTimeDeviceMembershipTargetResult resource type"
description: "The EnrollmentTimeDeviceMembershipTargetResult entity represents the results of the set/get EnrollmentTimeDeviceMembershipTarget request. The set/get EnrollmentTimeDeviceMembershipTarget API validates the device membership targets specified by the admin to ensure that they exist, that they are of the proper type, and any other target requirements are met such as that the Intune Device Provisioning First Party App is an owner of the target. Failures other than validation will result in 500 else validationSucceeded will be true or false if any of the validation fails for EnrollmentTimeDeviceMembershipTarget."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/12/2024
---

# enrollmentTimeDeviceMembershipTargetResult resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The EnrollmentTimeDeviceMembershipTargetResult entity represents the results of the set/get EnrollmentTimeDeviceMembershipTarget request. The set/get EnrollmentTimeDeviceMembershipTarget API validates the device membership targets specified by the admin to ensure that they exist, that they are of the proper type, and any other target requirements are met such as that the Intune Device Provisioning First Party App is an owner of the target. Failures other than validation will result in 500 else validationSucceeded will be true or false if any of the validation fails for EnrollmentTimeDeviceMembershipTarget.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|validationSucceeded|Boolean|Indicates if validations succeeded for the device membership target. When 'true', the device membership target validation found no issues. When 'false', the device membership target validation found issues. default - false|
|enrollmentTimeDeviceMembershipTargetValidationStatuses|[enrollmentTimeDeviceMembershipTargetStatus](../resources/intune-shared-enrollmenttimedevicemembershiptargetstatus.md) collection|A list of validation status of the memberships targetted to profile. This collection can contain a maximum of 1 elements.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.enrollmentTimeDeviceMembershipTargetResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.enrollmentTimeDeviceMembershipTargetResult",
  "validationSucceeded": true,
  "enrollmentTimeDeviceMembershipTargetValidationStatuses": [
    {
      "@odata.type": "microsoft.graph.enrollmentTimeDeviceMembershipTargetStatus",
      "targetId": "String",
      "validationSucceeded": true,
      "targetValidationErrorCode": "String"
    }
  ]
}
```
