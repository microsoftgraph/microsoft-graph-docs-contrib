---
title: "cloudPcOrganizationActionDetail resource type"
description: "Represents the result of a Cloud PC organization action."
author: "sqbing"
ms.date: 03/31/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcOrganizationActionDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of a Cloud PC organization action used to activate or deactivate an organization for Windows 365 for Agents.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionType|[cloudPcOrganizationActionType](#cloudpcorganizationactiontype-values)|The Cloud PC organization action type. Possible values: `activate`, `deactivate`, and `unknownFutureValue`.|
|errorDescription|String|More user-friendly error details. For example, `Activation failed due to invalid billing plan`.|
|status|[cloudPcOrganizationActionStatus](#cloudpcorganizationactionstatus-values)|The Cloud PC organization action status. Possible values: `inProgress`, `succeeded`, `failed`, and `unknownFutureValue`. Default is `inProgress`.|

### cloudPcOrganizationActionType values

|Member|Description|
|:---|:---|
|activate|To activate the organization for Windows 365 for Agents.|
|deactivate|To deactivate the organization for Windows 365 for Agents.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcOrganizationActionStatus values

|Member|Description|
|:---|:---|
|inProgress|The Cloud PC organization action is in progress.|
|succeeded|The Cloud PC organization action succeeded.|
|failed|The Cloud PC organization action failed.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcOrganizationActionDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcOrganizationActionDetail",
  "actionType": "String",
  "errorDescription": "String",
  "status": "String"
}
```

