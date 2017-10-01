# Start synchronization job

Starts the synchronization job (job must already exist). If job is in paused state, it will continue processing changes from the point where it was paused. If job is in quarantine, quarantine status will be cleared.

## Request

```http
POST /servicePrincipals/{id}/synchronization/jobs/{jobId}/start
```

## Request body

No content expected in the request body.

## Response

If successful, returns `204 No Content` response.

## Example

### Sample request

```http
POST https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/jobs/{jobId}/start
```

### Sample response

```http
HTTP/1.1 204 No Content
```
