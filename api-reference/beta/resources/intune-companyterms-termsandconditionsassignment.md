---
title: "termsAndConditionsAssignment resource type"
description: "A termsAndConditionsAssignment entity represents the assignment of a given Terms and Conditions (T&C) policy to a given group. Users in the group will be required to accept the terms in order to have devices enrolled into Intune."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# termsAndConditionsAssignment resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A termsAndConditionsAssignment entity represents the assignment of a given Terms and Conditions (T&C) policy to a given group. Users in the group will be required to accept the terms in order to have devices enrolled into Intune.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List termsAndConditionsAssignments](../api/intune-companyterms-termsandconditionsassignment-list.md)|[termsAndConditionsAssignment](../resources/intune-companyterms-termsandconditionsassignment.md) collection|List properties and relationships of the [termsAndConditionsAssignment](../resources/intune-companyterms-termsandconditionsassignment.md) objects.|
|[Get termsAndConditionsAssignment](../api/intune-companyterms-termsandconditionsassignment-get.md)|[termsAndConditionsAssignment](../resources/intune-companyterms-termsandconditionsassignment.md)|Read properties and relationships of the [termsAndConditionsAssignment](../resources/intune-companyterms-termsandconditionsassignment.md) object.|
|[Create termsAndConditionsAssignment](../api/intune-companyterms-termsandconditionsassignment-create.md)|[termsAndConditionsAssignment](../resources/intune-companyterms-termsandconditionsassignment.md)|Create a new [termsAndConditionsAssignment](../resources/intune-companyterms-termsandconditionsassignment.md) object.|
|[Delete termsAndConditionsAssignment](../api/intune-companyterms-termsandconditionsassignment-delete.md)|None|Deletes a [termsAndConditionsAssignment](../resources/intune-companyterms-termsandconditionsassignment.md).|
|[Update termsAndConditionsAssignment](../api/intune-companyterms-termsandconditionsassignment-update.md)|[termsAndConditionsAssignment](../resources/intune-companyterms-termsandconditionsassignment.md)|Update the properties of a [termsAndConditionsAssignment](../resources/intune-companyterms-termsandconditionsassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the entity.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|Assignment target that the T&C policy is assigned to.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termsAndConditionsAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termsAndConditionsAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.scopeTagGroupAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "String",
    "deviceAndAppManagementAssignmentFilterType": "String",
    "targetType": "String",
    "entraObjectId": "String"
  }
}
```