### Microsoft.Teams.GraphSvc_WorkloadConfig.config
| Request type | Limit per app per tenant | Limit per app accross all tenants |
| GET, teams/{teamId}/channels/{channelId}/messages/{messageId} | 50 per 00:00:10 | 1000 per 00:00:10 |
| POST, teams/{teamId}/channels | 20 per 00:00:10 | 200 per 00:00:10 |
| GET, me/chats or chats/ | 30 per 00:00:10 | 300 per 00:00:10 |
| POST, me/chats or chats/ | 20 per 00:00:10 | 200 per 00:00:10 |
| GET | 600 per 00:00:10 | 300 per 00:00:10 | 6000 per 00:00:10 | 3000 per 00:00:10 |
| POST, PUT, PATCH | 300 per 00:00:10 | 60 per 00:00:10 | 3000 per 00:00:10 | 1500 per 00:00:10 |
| DELETE | 150 per 00:00:10 | 30 per 00:00:10 | 1500 per 00:00:10 | 750 per 00:00:10 |
