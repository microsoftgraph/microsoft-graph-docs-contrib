---
title: "selfServiceSignUp resource type"
description: "Details self-service sign-up activity of Microsoft Entra External ID users on a tenant."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 06/11/2025
toc.title: Self-service sign-up
---

# selfServiceSignUp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details self-service sign-up activity of Microsoft Entra External ID users on a tenant.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/auditlogroot-list-signups.md)|[selfServiceSignUp](../resources/selfservicesignup.md) collection|Get a list of the [selfServiceSignUp](../resources/selfservicesignup.md) objects and their properties.|
|[Get](../api/selfservicesignup-get.md)|[selfServiceSignUp](../resources/selfservicesignup.md)|Read the properties and relationships of a [selfServiceSignUp](../resources/selfservicesignup.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appDisplayName|String|App name displayed in the Microsoft Entra admin center. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|appId|String|Unique GUID that represents the app ID in the Microsoft Entra ID. <br/><br/> Supports `$filter` (`eq`).|
|appliedEventListeners|[appliedAuthenticationEventListener](../resources/appliedauthenticationeventlistener.md) collection|Detailed information about the listeners, such as Azure Logic Apps and Azure Functions, which the corresponding events in the sign-up event triggered.|
|correlationId|String|The request ID sent from the client when the sign-up is initiated. Used to troubleshoot sign-up activity. <br/><br/> Supports `$filter` (`eq`).|
|createdDateTime|DateTimeOffset|Date and time (UTC) the sign-up was initiated. Example: midnight on Jan 1, 2014 is reported as `2014-01-01T00:00:00Z`. <br/><br/> Supports `$orderby`, `$filter` (`eq`, `le`, and `ge`).|
|id|String|Unique ID representing the sign-up activity. <br/><br/> Supports `$filter` (`eq`). Inherited from [entity](../resources/entity.md).|
|signUpIdentity|[signUpIdentity](../resources/signupidentity.md)|Unique identifier for self-service sign-up user. Supports `$filter` (`eq`) on the **signUpIdentifierType**.|
|signUpIdentityProvider|String|Describes the type of account for which the user registered. Values include `Email OTP`, `Email Password`, `Google`.|
|signUpStage|signUpStage|Describes the step in the sign-up flow. The possible values are: `credentialCollection`, `credentialValidation`, `credentialFederation`, `consent`, `attributeCollectionAndValidation`, `userCreation`, `tenantConsent`, `unknownFutureValue`.|
|status|[signUpStatus](../resources/signupstatus.md)|Sign-up status. Includes the error code and description of the error (if a sign-up failure or interrupt occurs). <br/><br/> Supports `$filter` (`eq`) on **errorCode** property.|
|userId|String|The identifier of the [user](../resources/user.md) object created during the sign-up.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.selfServiceSignUp",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.selfServiceSignUp",
  "id": "String (identifier)",
  "appDisplayName": "String",
  "appId": "String",
  "appliedEventListeners": [
    {
      "@odata.type": "microsoft.graph.appliedAuthenticationEventListener"
    }
  ],
  "correlationId": "String",
  "createdDateTime": "String (timestamp)",
  "signUpStage": "String",
  "status": {
    "@odata.type": "microsoft.graph.signUpStatus"
  },
  "signUpIdentity": {
    "@odata.type": "microsoft.graph.signUpIdentity"
  },
  "signUpIdentityProvider": "String",
  "userId": "String"
}
```

