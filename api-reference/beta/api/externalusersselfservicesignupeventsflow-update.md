---
title: "Update externalUsersSelfServiceSignUpEventsFlow"
description: "Update the properties of an externalUsersSelfServiceSignUpEventsFlow object."
author: "garrodonnell"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update externalUsersSelfServiceSignUpEventsFlow

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "externalusersselfservicesignupeventsflow-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/externalusersselfservicesignupeventsflow-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /externalUsersSelfServiceSignUpEventsFlow
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for the events policy. Must be unique. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md). Required.|
|description|String|The description of the events policy. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md). Optional.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions representing the context of the authentication request which is used to decide whether the events policy is invoked. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md). Optional.|
|priority|Int32|The priority to use for each individual event of the events policy. If multiple competing listeners for an event have the same priority, one is chosen and an error is silently logged. Default is 500. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md). Required.|
|onInteractiveAuthFlowStart|[onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md)|The configuration for what to invoke when an authentication flow is ready to be initiated. Optional.|
|onAuthenticationMethodLoadStart|[onAuthenticationMethodLoadStartHandler](../resources/onauthenticationmethodloadstarthandler.md)|The configuration for what to invoke when authentication methods are ready to be presented to the user. Must have at least one identity provider linked. Optional.|
|onAttributeCollection|[onAttributeCollectionHandler](../resources/onattributecollectionhandler.md)|The configuration for what to invoke when attributes are ready to be collected from the user. Optional.|
|onAttributeCollectionStart|[onAttributeCollectionStartHandler](../resources/onattributecollectionstarthandler.md)|The configuration for what to invoke when attribution collection has started. Optional.|
|onAttributeCollectionSubmit|[onAttributeCollectionSubmitHandler](../resources/onattributecollectionsubmithandler.md)|The configuration for what to invoke when attributes have been submitted at the end of attribution collection. Optional.|
|onUserCreateStart|[onUserCreateStartHandler](../resources/onusercreatestarthandler.md)|The configuration for what to invoke during user creation. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_externalusersselfservicesignupeventsflow"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/externalUsersSelfServiceSignUpEventsFlow
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
  "displayName": "String",
  "description": "String",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "priority": "Integer",
  "onInteractiveAuthFlowStart": {
    "@odata.type": "microsoft.graph.onInteractiveAuthFlowStartHandler"
  },
  "onAuthenticationMethodLoadStart": {
    "@odata.type": "microsoft.graph.onAuthenticationMethodLoadStartHandler"
  },
  "onAttributeCollection": {
    "@odata.type": "microsoft.graph.onAttributeCollectionHandler"
  },
  "onAttributeCollectionStart": {
    "@odata.type": "microsoft.graph.onAttributeCollectionStartHandler"
  },
  "onAttributeCollectionSubmit": {
    "@odata.type": "microsoft.graph.onAttributeCollectionSubmitHandler"
  },
  "onUserCreateStart": {
    "@odata.type": "microsoft.graph.onUserCreateStartHandler"
  }
}
```


### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
  "id": "74250661-dd5b-0c0b-b94c-db8a26827bf3",
  "displayName": "String",
  "description": "String",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "priority": "Integer",
  "onInteractiveAuthFlowStart": {
    "@odata.type": "microsoft.graph.onInteractiveAuthFlowStartHandler"
  },
  "onAuthenticationMethodLoadStart": {
    "@odata.type": "microsoft.graph.onAuthenticationMethodLoadStartHandler"
  },
  "onAttributeCollection": {
    "@odata.type": "microsoft.graph.onAttributeCollectionHandler"
  },
  "onAttributeCollectionStart": {
    "@odata.type": "microsoft.graph.onAttributeCollectionStartHandler"
  },
  "onAttributeCollectionSubmit": {
    "@odata.type": "microsoft.graph.onAttributeCollectionSubmitHandler"
  },
  "onUserCreateStart": {
    "@odata.type": "microsoft.graph.onUserCreateStartHandler"
  }
}
```

