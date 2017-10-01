# Retrieve synchroization template

Retrieve template by its identifier

### Request

```http
GET applications/{id}/synchronization/templates/{templateId}
GET servicePrincipals/{id}/synchronization/templates/{templateId}
```

### Response

If successful, returns `200 OK` response with [synchronizationTemplate](../resources/synchronization_template.md) object. If template with given id is not fount, returns `404 Not Found`.

### Example

Sample request

```http
GET https://graph.microsoft.com/testSynchronization/servicePrincipals/{id}/synchronization/templates/Slack
```

Sample response

```http
HTTP/1.1 200 OK
{
    "id": "Slack",
    "factoryTag": "CustomSCIM",
    "schema": {
        "directories": [...],
        "synchronizationRules": [...]
        }
}
```