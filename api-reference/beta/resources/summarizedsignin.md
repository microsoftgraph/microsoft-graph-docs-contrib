---
title: "summarizedSignIn resource type"
description: "Represents the summary of sign in events for a given category."
ms.date: 08/18/2025
author: "cumansfi"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# summarizedSignIn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summarized sign-in event.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get summarized MSI sign-ins](../api/auditlogroot-getsummarizedmsisignins.md)|[summarizedSignIn](../resources/summarizedsignin.md) collection|Get a list of MSI sign-in event counts grouped by user, application, IP address, and time window, with drill-down capability using individual request IDs via the [/signIns](../resources/signin.md) endpoint.|
|[Get summarized non-interactive sign-ins](../api/auditlogroot-getsummarizednoninteractivesignins.md)|[summarizedSignIn](../resources/summarizedsignin.md) collection|Get a list of non-interactive sign-in event counts grouped by user, application, IP address, and time window, with drill-down capability using individual request IDs via the [/signIns](../resources/signin.md) endpoint. |
|[Get summarized service principal sign-ins](../api/auditlogroot-getsummarizedserviceprincipalsignins.md)|[summarizedSignIn](../resources/summarizedsignin.md) collection|Get a list of service principal sign-in event counts grouped by user, application, IP address, and time window, with drill-down capability using individual request IDs via the [/signIns](../resources/signin.md) endpoint.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|agent|[microsoft.graph.agentic.agentSignIn](../resources/agentic-agentsignin.md)|Represents details about the agentic sign-in. Includes the type of agent as well as parent appId in some cases. Supports `$filter` (`eq`) for **agentType**.|
|aggregationDateTime|DateTimeOffset|The aggregated day for which the summary applies to. This property always represents the entire day. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|appDisplayName|String|The application name displayed in the Microsoft Entra admin center. Supports `$filter` (`eq`).|
|appId|String|The application identifier (client ID) in Microsoft Entra ID. Supports `$filter` (`eq`).|
|conditionalAccessStatus|conditionalAccessStatus|The status of the conditional access policy triggered. The possible values are: `success`, `failure`, `notApplied`, `unknownFutureValue`. Supports `$filter` (`eq`).|
|firstSignInDateTime|DateTimeOffset|The earliest sign-in event included in this summary. This property always represents the entire day. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The identifier representing the sign-in activity. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`).|
|ipAddress|String|The IP address a user or autonomous agent used to reach a resource provider, used to determine Conditional Access compliance for some policies. For example, when a user interacts with Exchange Online, the IP address that Microsoft Exchange receives from the user can be recorded here. This value is often `null`. Supports `$filter` (`eq`, `startswith`).|
|managedServiceIdentity|[managedIdentity](../resources/managedidentity.md)|Contains information about the managed identity used for the sign in, including its type, associated Azure Resource Manager resource ID, and federated token information. Supports `$filter` (`eq`) for **msiType**.|
|resourceDisplayName|String|The name of the resource that the user signed in to. Supports `$filter` (`eq`).|
|resourceId|String|The application identifier of the resource application that the user signed in to. Supports `$filter` (`eq`).|
|servicePrincipalId|String|The application identifier of the specific service principal instance of the application identifier used for sign-in. This field is populated when you're signing in using an application and is different than the `appId` property. Supports `$filter` (`eq`).|
|servicePrincipalName|String|The application name used for sign-in. This field is populated when you're signing in using an application. Supports `$filter` (`eq`, `startswith`).|
|signInCount|Int64|The total number of sign-in events included in the summary.|
|status|[signInStatus](../resources/signinstatus.md)|The sign-in status. Includes the error code and description of the error (for a sign-in failure). Supports `$filter` (`eq`) for **errorCode**.|
|tenantId|String|The tenant identifier of the user initiating the sign-in. Supports `$filter` (`eq`).|
|userPrincipalName|String|User principal name of the user that initiated the sign-in. This value is always in lowercase. For guest users whose values in the user object typically contain `#EXT#` before the domain part, this property stores the value in both lowercase and the "true" format. For example, while the user object stores `AdeleVance_fabrikam.com#EXT#@contoso.com`, the sign-in logs store `adelevance@fabrikam.com`. Supports `$filter` (`eq`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.summarizedSignIn",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.summarizedSignIn",
  "id": "String (identifier)",
  "signInCount": "Integer",
  "aggregationDateTime": "String (timestamp)",
  "firstSignInDateTime": "String (timestamp)",
  "userPrincipalName": "String",
  "appId": "String",
  "appDisplayName": "String",
  "ipAddress": "String",
  "conditionalAccessStatus": "String",
  "resourceDisplayName": "String",
  "resourceId": "String",
  "tenantId": "String",
  "servicePrincipalName": "String",
  "servicePrincipalId": "String",
  "status": {
    "@odata.type": "microsoft.graph.signInStatus"
  },
  "managedServiceIdentity": {
    "@odata.type": "microsoft.graph.managedIdentity"
  },
  "agent": {
    "@odata.type": "microsoft.graph.agentic.agentSignIn"
  }
}
```

