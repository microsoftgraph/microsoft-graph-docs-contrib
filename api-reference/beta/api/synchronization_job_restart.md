# Restart synchronization job

Restarts the synchronization job, forcing it to reprocess from scratch all the objects in the directory. Optionally clears existing synchronization state and previous errors.

## Request

```http
POST /servicePrincipals/{id}/synchronization/jobs/{jobId}/restart
```

## Request body

In the request body provide JSON object with the following parameters:

| Parameter     | Type      | Description    |
|:--------------|:----------|:---------------|
|criteria       |synchronizationJobRestartCriteria |Restart criteria|

### synchronizationJobRestartCriteria

```json
{
    "resetScope": "String"
}
```

| Property      | Type      | Description    |
|:--------------|:----------|:---------------|
|resetScope     |Integer    | Comma-separated combination of following flags: `ConnectorDataStore`, `Escrows`, `Watermark`, `QuarantineState`. You can use `Full` for all the above combined|

## Response

If successful, returns `204 No Content` response.

## Example

### Sample request

```http
POST https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/jobs/{jobId}/restart
Authorization: Bearer <token>
Content-type: application/json

{
   "criteria": {
       "resetScope": "ConnectorDataStore, Escrows, QuarantineState"
   }
}
```

### Sample response

```http
HTTP/1.1 204 No Content
```
