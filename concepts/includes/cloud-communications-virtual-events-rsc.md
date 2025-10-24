### Resource-Specific Consent (RSC) for Virtual Events

Resource-Specific Consent (RSC) allows apps to request permissions scoped to a specific webinar or town hall instead of requiring global admin privileges. The RSC permissions improves security, simplifies consent flows, and enables developers to build integrations that respect organizational boundaries.

#### Enabled Graph Virtual Events APIs & RSC Permissions

| **RSC Permission**                               | **APIs**                                  | **Description**                                                                 |
|---------------------------------------------------|-------------------------------------------|---------------------------------------------------------------------------------|
| **VirtualEvent.Read.Chat**                       | GET virtual event                      | Read information for this webinar or town hall, including schedules, speakers, event settings, and webinar registrations. |
| **OnlineMeetingArtifact.Read.Chat**              | Attendance report & attendance record    | Read attendance reports and attendance records for this webinar or town hall.  |
| **VirtualEventRegistration-Anon.ReadWrite.Chat** | Virtual event registrations              | Register attendees and cancel registrations for this webinar.                  |


#### Alternative: Traditional Authentication Flow
If RSC isn't required or feasible, developers can use **traditional OAuth flows**:
- **App-only token flow**: Ideal for backend services or automation scenarios where the app acts without user context.
- **Delegated (user) token flow**: Suitable when actions require user context and consent.

#### When to Use RSC vs. Traditional Token Flow

| **Scenario**                                      | **Recommended Approach** |
|----------------------------------------------------|---------------------------|
| App needs access to a **specific webinar or town hall only** | **RSC** |
| App requires **tenant-wide access** to multiple events | **App-only token flow** |
| User-driven actions like organizer managing events | **Delegated token flow** |
| Compliance/security mandates require **least privilege** | **RSC** |

#### Quick Start
1. **Register your app** and define RSC permissions in the app manifest.
2. **Publish your app** via Teams Developer Portal or Partner Center.
3. **Admin grants RSC** in Teams Admin Center.
4. **Use Graph APIs** for webinars and town halls with scoped permissions.
