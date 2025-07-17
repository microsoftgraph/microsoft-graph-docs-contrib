---
title: "customExtensionStageSetting resource type"
description: "Defines when to execute an access package custom workflow extension."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# customExtensionStageSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines when to execute a [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) or [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md) object.


Inherits from [entity](../resources/entity.md).

To read the **customExtensionStageSettings** objects on a policy, append `?$expand=customExtensionStageSettings($expand=customExtension)` to a [GET accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-get.md) request. For example, `GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/4540a08f-8ab5-43f6-a923-015275799197?$expand=customExtensionStageSettings($expand=customExtension)`. For more information, see [Example 3: Retrieve the custom extension stage settings for a policy](../api/accesspackageassignmentpolicy-get.md#example-3-retrieve-the-custom-extension-stage-settings-for-a-policy).

To delete the **customExtensionStageSettings** objects from a policy, call the [Update accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-update.md) and specify the customExtensionHandlers property as an empty collection. For more information, see [Example 3: Remove the customExtensionStageSettings from a policy](../api/accesspackageassignmentpolicy-update.md#example-3-remove-the-customextensionstagesettings-from-a-policy).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String| Identifier of the stage. Inherited from [entity](../resources/entity.md).|
|stage|accessPackageCustomExtensionStage|Indicates the stage of the access package assignment request workflow when the access package custom extension runs. The possible values are: `assignmentRequestCreated`, `assignmentRequestApproved`, `assignmentRequestGranted`, `assignmentRequestRemoved`, `assignmentFourteenDaysBeforeExpiration`, `assignmentOneDayBeforeExpiration`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[customCalloutExtension](../resources/customcalloutextension.md)|Indicates the custom workflow extension that is executed at this stage. Nullable. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
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

