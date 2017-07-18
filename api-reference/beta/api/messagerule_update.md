# Update rule

Change writable properties on a [messageRule](,,/resources/messagerule.md) object and save the changes.

## Prerequisites
The following **scopes** are required to execute this API: *MailboxSettings.ReadWrite*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/mailFolders/inbox/messagerules/{id}
PATCH /users/{id | userPrincipalName}/mailFolders/inbox/messagerules/{id}
```
## Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {token}. Required. |


## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will 
maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| actions | [messageRuleActions](messageruleactions.md) | Actions to be taken on a message when the corresponding conditions are fulfilled. |
| conditions | [messageRulePredicates](messagerulepredicates.md) | Conditions that when fulfilled, will trigger the corresponding actions for that rule. |
| displayName | String | The display name of the rule. |
| exceptions | [messageRulePredicates](messagerulepredicates.md) | Exception conditions for the rule. |
| isEnabled | Boolean | Indicates whether the rule is enabled to be applied to messages. |
| isReadOnly | Boolean | Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API. |
| sequence | Int32 | Indicates the order in which the rule is executed, among other rules. |


## Response
If successful, this method returns a `200 OK` response code and updated [messageRule](,,/resources/messagerule.md) object in the response body.
## Example
##### Request
The following example changes the name of the rule, and the actions to be taken for that rule in the 
[example](messagerule_get.md#example) in [Get rule](messagerule_get.md), from forwarding to an address to marking its importance as high. 
<!-- {
  "blockType": "request",
  "name": "update_messagerule"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/mailfolders/inbox/messagerules('AQAAAJ5dZqA=')

Content-type: application/json

{
    "displayName": "Important from partner",
    "actions": {
        "markImportance": "high"
     }
} 
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.messageRule"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#Me/mailFolders('inbox')/messageRules/$entity",
  "@odata.id":"https://graph.microsoft.com/beta/users('94447c6e-ea4c-494c-a9ed-d905e366c5cb@007e925e-fb5a-4f60-9cb6-58a21e692480')/mailFolders('inbox')/messageRules('AQAAAJ5dZqA=')",
  "id":"AQAAAJ5dZqA=",
  "displayName":"Important from partner",
  "sequence":2,
  "isEnabled":true,
  "hasError":false,
  "isReadOnly":false,
  "conditions":{
    "senderContains":[
      "ADELE"
    ]
  },
  "actions":{
    "markImportance": "high"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update rule",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->