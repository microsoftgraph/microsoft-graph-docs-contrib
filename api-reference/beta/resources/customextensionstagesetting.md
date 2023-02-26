---
title: "customExtensionStageSetting resource type"
description: "Defines when to execute a access package custom workflow extension."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
---

# customExtensionStageSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
None

> [!NOTE]
>
> 1. To read the customExtensionStageSetting objects on a policy, append `?$expand=customExtensionStageSettings` to a [GET accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-get.md) request. For example, `GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/4540a08f-8ab5-43f6-a923-015275799197?$expand=customExtensionStageSettings`. For more details, see [Example 2: Retrieve the custom extension handlers for a policy](../api/accesspackageassignmentpolicy-get.md#example-2-retrieve-the-custom-extension-handlers-for-a-policy).
>
> 2. To delete the **customExtensionStageSettings** objects from a policy, call the [Update accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-update.md) and specify the customExtensionHandlers property as an empty collection. For more details, see [Example 2: Remove the customExtensionStageSettings from a policy](../api/accesspackageassignmentpolicy-update.md#example-3-remove-the-customextensionstagesettings-from-a-policy).

## Properties
|Property|Type|Description|
|:---|:---|:---|
||id|String| Identifier of the stage. Inherited from [entity](../resources/entity.md).|
|stage|accessPackageCustomExtensionStage|Indicates the stage of the access package assignment request workflow when the access package custom extension runs.The possible values are: `assignmentRequestCreated`, `assignmentRequestApproved`, `assignmentRequestGranted`, `assignmentRequestRemoved`, `assignmentFourteenDaysBeforeExpiration`, `assignmentOneDayBeforeExpiration`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[customCalloutExtension](../resources/customcalloutextension.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customExtensionStageSetting",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionStageSetting",
  "id": "String (identifier)",
  "stage": "String"
}
```

