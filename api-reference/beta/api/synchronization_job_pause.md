# Pause synchronization job

Temporarily stops job execution. All the progress and job's state is persisted, and upon [Start](synchronization_job_start.md) call job execution will continue from where it left off

## Request

```http
POST /servicePrincipals/{id}/synchronization/jobs/{jobId}/pause
```

## Request body

No content expected in the request body.

## Response

If successful, returns `204 No Content` response.

## Example

### Sample request

```http
POST https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/jobs/{jobId}/pause
```

### Sample response

```http
HTTP/1.1 204 No Content
```
