---
title: "Error Responses in the LearningCourseActivity API"
description: "This article describes error codes that are returned by the learningCourseActivity API in Microsoft Graph whenever a request that is sent through the API fails."
author: "jprasad"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: conceptualPageType
---

#Error Responses in the LearningCourseActivity API

Namespace: microsoft.graph

This article describes error codes that are returned by the learningCourseActivity API in Microsoft Graph whenever a request that is sent through the API fails.

## Error codes and messages for failed create requests

|Scenario|HTTP Code|Code|Message|Details|
|:---|:---|:---|:---|:---|
|Forbidden|403|Forbidden|You don't have an adequate service plan for this request.|
|Bad request|400|Bad request|This provider isn't enabled for the given tenant.|
|Bad request|400|Bad request|There was an issue with your request. Make sure the registrationId you entered is valid or registered for your tenant.|
|Internal server error|500|Internal server error|Internal server error.|
|Request throttled|429|Too many requests|{"code": "tooManyRequests","message": "Retry after {noOfMinutes} minutes"}.|
|Service unavailable|503|Service unavailable|{"code": "serviceUnavailable","message": "Retry after {noOfMinutes} minutes"}.|
|Multiple field validations fail|400|badRequest|badRequest|{"code": "badRequest","message": "Input field {fieldName}shouldn't be empty"}, {"code": "badRequest","message": "Input field {fieldName} is required"}, {"code": "badRequest","message": "Input field {fieldName}length exceeded than {expectedLength}"}.|
|Forbidden|403|The provider isn't valid to create course activity for the given learning content|When the registrationId/learningProviderId doesn't match the provider with which the learningContent is created.|
|Forbidden|403|The user license isn't valid to perform the operation|When the user for which the assignment is being created doesn't have a premium license.|

## Error codes and messages for failed delete requests

|Scenario|HTTP code|Code|Message|Details|
|:---|:---|:---|:---|:---|
|Method not supported for entity|405|methodNotAllowed|This method isn't supported for this entity type. See the Microsoft Graph documentation for the methods applicable to this entity.|
|User doesn't have the appropriate permissions scope|403|Forbidden|Your account doesn't have access to this report or data. Please contact your global administrator to request access.|
|Forbidden|403|Forbidden|You don't have an adequate service plan for this request.|
|Bad request|400|Bad request|This provider isn't enabled for the given tenant.|
|Bad request|400|Bad request|There was an issue with your request. Make sure the registrationId you entered is valid or registered for your tenant.|
|Bad request|404|Not Found|The requested assignment {id} doesn’t exist.|
|Internal server error|500|Internal server error|Internal server error.|
|Request throttled|429|Too Many Requests|{"code": "tooManyRequests","message": "Retry after {noOfMinutes} minutes"}|
|Service unavailable|503|Service Unavailable|{"code": "serviceUnavailable","message": "Retry after {noOfMinutes} minutes"}|

## Error codes and messages for get request fail

|Scenario|HTTP Code|Code|Message|Details|
|:---|:---|:---|:---|:---|
|Method not supported for entity|405|methodNotAllowed|This method isn't supported for this entity type. See the Microsoft Graph documentation for the methods applicable to this entity.|
|User doesn't have appropriate permission scope|403|Forbidden|Your account doesn't access to this report or data. Please contact your global administrator to request access.|
|Forbidden|403|Forbidden|You don't have an adequate service plan for this request.|
|Bad Request|400|Bad Request|This provider isn't enabled for the given tenant.|
|Bad Request|400|Bad Request|There was an issue with your request. Make sure the registrationId you entered is valid or registered for your tenant|
|Bad Request|404|Not Found|The requested assignment {id} doesn’t exist.|
|Internal Server Error|500|Internal Server Error|Internal Server Error|
|Request throttled|429|Too Many Requests|{"code": "tooManyRequests","message": "Retry after {noOfMinutes} minutes"}|
|Service Unavailable|503|Service Unavailable|{"code": "serviceUnavailable","message": "Retry after {noOfMinutes} minutes"}|

## Error codes and messages for failed update requests

|Scenario|HTTP Code|Code|Message|Details|
|:---|:---|:---|:---|:---|
|Method not supported for entity|405|methodNotAllowed|This method isn't supported for this entity type. See the Microsoft Graph documentation for the methods applicable to this entity.|
|User doesn't have appropriate permission scope|403|Forbidden|Your account doesn't have access to this report or data. Please contact your global administrator to request access.|
|Forbidden|403|Forbidden|You don't have an adequate service plan for this request.|
|Bad request|400|Bad request|This provider isn't enabled for the given tenant.|
|Bad request|400|Bad request|There was an issue with your request. Make sure the registrationId you entered is valid or registered for your tenant|
|Bad request|404|Not found|The assignment ID requested doesn’t exist.|
|Internal server error|500|Internal server error|Internal server error|
|Request throttled|429|Too many requests|{"code": "tooManyRequests","message": "Retry after {noOfMinutes} minutes".}|
|Service unavailable|503|Service unavailable|{"code": "serviceUnavailable","message": "Retry after {noOfMinutes} minutes"}.|
|Bad request|400|badRequest|Required fields are missing|{"code": "badRequest","message": "Input field {fieldName} is required"}.|
|Bad request|400|badRequest|Input fields are invalid|{"code": "badRequest","message": "Input field {fieldName} is invalid"}.|
|Bad request|400|badRequest|badRequest|{"code": "badRequest","message": "Input field {fieldName} shouldn't be empty"}.|
|Forbidden|403|Forbidden|The provider is not valid to create course activity for the given learning content|When the registrationId/learningProviderId doesn't match with the provider with which the learningContent is created.|
|Forbidden|403|Forbidden|The user license is not valid to perform the operation|When the user for which the assignment is being created does not have a premium license.|
