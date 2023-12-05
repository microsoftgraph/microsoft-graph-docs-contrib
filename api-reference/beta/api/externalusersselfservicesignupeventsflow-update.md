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


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md). Required.|
|description|String|**TODO: Add Description** Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md). Optional.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|**TODO: Add Description** Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md). Optional.|
|priority|Int32|**TODO: Add Description** Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md). Required.|
|onInteractiveAuthFlowStart|[onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md)|**TODO: Add Description** Optional.|
|onAuthenticationMethodLoadStart|[onAuthenticationMethodLoadStartHandler](../resources/onauthenticationmethodloadstarthandler.md)|**TODO: Add Description** Optional.|
|onAttributeCollection|[onAttributeCollectionHandler](../resources/onattributecollectionhandler.md)|**TODO: Add Description** Optional.|
|onAttributeCollectionStart|[onAttributeCollectionStartHandler](../resources/onattributecollectionstarthandler.md)|**TODO: Add Description** Optional.|
|onAttributeCollectionSubmit|[onAttributeCollectionSubmitHandler](../resources/onattributecollectionsubmithandler.md)|**TODO: Add Description** Optional.|
|onUserCreateStart|[onUserCreateStartHandler](../resources/onusercreatestarthandler.md)|**TODO: Add Description** Optional.|



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

