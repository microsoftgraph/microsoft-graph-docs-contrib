# Enumeration documentation

This shared reference covers all enumeration documentation tasks across scenarios: creating new enumerations (Scenario 1), promoting enumerations (Scenario 2), updating existing enumerations, and deprecating enumerations (Scenario 3).

---

## Creating new enumerations

**Important:** There are three options for documenting enumerations depending on the complexity and use case. Choose the appropriate option based on the decision guide below.

### Quick decision guide

| Criteria | Recommended Option |
|----------|-------------------|
| Self-explanatory member names | Option 1: Enum file |
| Need member descriptions | Option 2: Parent resource OR Option 3: Separate topic |
| Single feature/related resources in same namespace | Option 2: Parent resource |
| Enum with many members requiring descriptions or multiple resources use enum | Option 3: Separate topic |

**Auto-selection heuristics** — use these to select an option automatically when the Documentation Plan doesn't specify:
1. If the doc stub defines the enum in `enums.md` or `enums-{subnamespace}.md` → **Option 1**
2. If the Documentation Plan says "with descriptions" and the enum has ≤10 members → **Option 2**
3. If the Documentation Plan says "with descriptions" and the enum has >10 members → **Option 3**
4. If multiple unrelated resources reference the same enum → **Option 3**
5. When uncertain, default to **Option 1** (simplest) and flag for author review

### Option 1: Use global enum file (Preferred for simple enums)

**For microsoft.graph namespace:**
- Use existing `api-reference/beta/resources/enums.md` or `api-reference/v1.0/resources/enums.md`

**For subnamespaces:**
- Create `enums-{subnamespace-name}.md` (e.g., `enums-security.md` for `microsoft.graph.security` namespace)

**Steps:**

1. **Add to enums file:**
   - Add an H3 section titled "{enum-type} values" (e.g., "eventType values")
   - Include a table with column header **Member** only
   - List members without numeric values or descriptions
   - For evolvable enums: Include `unknownFutureValue` in member list

2. **Update parent resource Properties table:**
   - Specify the enum as the property's return type
   - For subnamespaces: Use fully qualified name (e.g., `microsoft.graph.security.alertStatus`)

3. **Update property description:**
   - List all possible values in the description
   - **For flagged enums:** Add "This flagged enumeration allows multiple members to be selected simultaneously." before listing the possible values
   - **For evolvable enums (if unknownFutureValue is last member):**
     - Format: "The possible values are: `value1`, `value2`, `unknownFutureValue`."
   - **For evolvable enums (if members follow unknownFutureValue):**
     - Format: "The possible values are: `value1`, `value2`, `unknownFutureValue`, `value3`. Use the `Prefer: include-unknown-enum-members` request header to get the following value or values in this evolvable enum: `value3`."

4. **JSON representation:**
   - Define the property as type **String**, not the enum type

**When to use:**
- Member names are self-explanatory
- No or minimal descriptions needed

   Example where minimal descriptions are needed:
  ```markdown
  The possible values are: <br/><li>`none`: No cross-tenant access. Indicates a single-tenant, non-B2B scenario. </li> <li>`b2bCollaboration`: The connection involves B2B collaboration across tenants. </li> <li>`unknownFutureValue`: Evolvable enumeration sentinel value. Do not use.</li>
  ```

**Note:** enums.md and enums-{subnamespace}.md files are not customer-facing (they're for API Doctor validation only).

### Option 2: Document in parent resource topic

Document within the **Properties** section of the resource that uses the enum. This option is customer-facing.

**Steps:**

1. **Create H3 section after Properties table:**
   - Title: "{enum-type} values"

   - **For evolvable enums (if members follow unknownFutureValue):**
     - Add introductory text before the table:
       ```markdown
       The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations).
       Use the `Prefer: include-unknown-enum-members` request header to get the following members in this evolvable enum: `value3`.
       ```
   - **For flagged enums:**
     - Append the following boilerplate text to the introductory text before the table:
      ```markdown
       The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations).
       Use the `Prefer: include-unknown-enum-members` request header to get the following members in this evolvable enum: `value3`. This flagged enumeration allows multiple members to be selected simultaneously.
       ```

2. **Create table:**
   - Columns: **Member** (required) and **Description** (optional)
   - List members in ascending order by numeric value (without exposing numeric values)
   - **For evolvable enums:**
     - Include `unknownFutureValue` member
     - Description for `unknownFutureValue`: "Evolvable enumeration sentinel value. Do not use." or "Evolvable enumeration sentinel value. Don't use."

3. **Update Properties table:**
   - Specify enum as property's return type and link to the H3 section
   - For subnamespaces: Use fully qualified name
   - Optionally list values inline in description (can omit to avoid duplication)

4. **JSON representation:**
   - Define property as type **String**, not the enum type

5. **If multiple related resources use this enum:**
   - Define the table once and link from other topics

**When to use:**
- Need descriptions for enum members
- Enum and resources are in the same namespace
- Resources are part of the same feature
- Enum is only used by one resource or a few related resources

**Important:** More content increases page scroll length. If the enum has many members, consider Option 3.

### Option 3: Create separate enum topic

Create a dedicated topic for the enumeration. This option is rarely applicable.

**File naming:**
- microsoft.graph namespace: `{enum-name}.md`
- Subnamespaces: `{subnamespace-name}-{enum-name}.md` (e.g., `callrecords-servicerole.md`)

**Steps:**

1. **Create enum topic:**
   - Title: "{enum-type} enum type"
   - doc_type: "enumPageType"
   - Single sentence describing the enum's purpose, linking to consuming resource(s)
   - **For flagged enums:** Append "This flagged enumeration allows multiple members to be selected simultaneously." to the introductory text.
   - **For evolvable enums:** Mention it's an evolvable enumeration

2. **Add Members H2 section:**
   - **For evolvable enums (if members follow unknownFutureValue):**
     - Add introductory text before the table (same as Option 2)
   - Table with columns: **Member** (required) and **Description** (optional)
   - List members in ascending order by numeric value (without exposing values)
   - **For evolvable enums:**
     - Include `unknownFutureValue` member
     - Description: "Evolvable enumeration sentinel value. Do not use." or "Evolvable enumeration sentinel value. Don't use."

3. **Update parent resource Properties table:**
   - Specify enum as property's return type and link to the enum topic
   - For subnamespaces: Use fully qualified name
   - Avoid listing values inline to prevent duplication

4. **JSON representation:**
   - Define property as type **String**, not the enum type

5. **For subnamespaces:**
   - Add namespace attribute in page annotation at bottom of topic:
     ```json
     {
       "type": "#page.annotation",
       "namespace": "microsoft.graph.{subnamespace}"
     }
     ```

**When to use:**
- Need descriptions for enum members and Option 2 isn't suitable
- Multiple resources use the enum
- Enum has many members requiring detailed descriptions that might reduce scannability in Options 1 or 2

**Important:** Use only when necessary. Prefer Option 1 or 2 whenever possible.

---

## Evolvable enumerations - Special handling

**All evolvable enumerations:**
- Include `unknownFutureValue` sentinel member
- This member demarcates known members (defined initially) from unknown members (added later or to be defined in future)
- Must always be documented to allow developers to handle future enum updates

**Two scenarios:**

**Scenario 1: unknownFutureValue is the last defined member**
- List all values with `unknownFutureValue` last
- No special header required
- Example inline format: "The possible values are: `success`, `failure`, `timeout`, `unknownFutureValue`."

**Scenario 2: Members follow unknownFutureValue**
- Must include note about `Prefer: include-unknown-enum-members` request header
- Example inline format: "The possible values are: `none`, `b2bCollaboration`, `unknownFutureValue`, `passthrough`. Use the `Prefer: include-unknown-enum-members` request header to get the following value or values in this evolvable enum: `passthrough`."
- For Options 2 & 3: Add introductory text before the table explaining the header requirement
- Optionally in GET API topics: Add note about optional request header in **Request headers** section

---

## Updating existing enumerations

**When adding new members to existing enumerations:**

1. **Locate all places where the enum is documented:**

   The enum has a **definition** in exactly one of three locations, and may also have an **inline listing** in property descriptions. Search the version-appropriate `resources/` folder for the enum type name to identify which locations apply.

   | Location type | Where to look | How to identify |
   |---------------|---------------|-----------------|
   | **Global enums file** (Option 1) | `enums.md` or `enums-{subnamespace}.md` | H3 section titled "{enumType} values" with a Member-only table |
   | **H3 in parent resource** (Option 2) | Resource file that uses the enum | H3 section titled "{enumType} values" with a Member + Description table |
   | **Separate enum topic** (Option 3) | `{enum-name}.md` or `{subnamespace}-{enum-name}.md` | Dedicated file with Members H2 section |
   | **Inline in property description** (any option) | Resource files where a property declares the enum as its return type | Property description that lists values (e.g., "The possible values are: `value1`, `value2`…") |

   > **Important:** The inline property description is independent of the enum definition. When the enum definition uses Option 2 or 3, the property's Type column in the Properties table links to the H3 table or separate topic instead of listing values inline in the description — in that case, no inline update is needed. When Option 1 is used, the property description lists values inline (because the global enums file is not customer-facing) and must be updated.

2. **Update the enum definition** (whichever location from step 1 applies):
   - Add the new members to the table
   - Maintain the order from the Documentation Plan or the author's prompt
   - Do not change the order of existing members unless specified

3. **Update inline property descriptions** (only if values are listed inline — see step 1):
   - Search for all resource files that reference the enum type as a property return type
   - Add the new member to the list of possible values, maintaining the order from the Documentation Plan or the author's prompt
   - If the property uses evolvable enum syntax with `Prefer: include-unknown-enum-members`, add the new member to both the main list AND the evolvable members list
   - Ensure consistency across all properties that reference the same enumeration
   - Ensure consistent formatting with backticks around enum values

4. **For evolvable enums with new members after unknownFutureValue:**
   - Update introductory text (for Options 2 & 3) to list the new members that require the header
   - Update inline descriptions to include the new members in the header note

---

## Deprecating enumerations

### To deprecate an entire enumeration

1. **Update enumeration definition:**
   - **In enums.md or parent resource:** Add "(deprecated)" to section title: `### emailType values (deprecated)`
   - **In own topic (rare):** Add "(deprecated)" to H1 title and add deprecation banner

2. **Update properties using the enum:**
   - Update type, description, possible values with alternative/workaround

### To deprecate enumeration members

1. **Update member table:**
   - Add "(deprecated)" to member name, specify alternative, move to end (see common pattern)

2. **Update property descriptions:**
   - Note which values are deprecated and provide guidance

---

## Quality checklist for enumerations

### For new enumerations

- [ ] Documentation option selected based on decision guide (Option 1, 2, or 3)
- [ ] **Option 1 (Enum file):**
  - [ ] New enumerations added to appropriate enums.md or enums-{subnamespace}.md file
  - [ ] Only Member column documented (no Description or Value columns)
  - [ ] Members listed in order from Documentation Plan
  - [ ] For evolvable enums: unknownFutureValue included in member list
  - [ ] Property descriptions include all enum values with correct format
  - [ ] For evolvable enums with members after unknownFutureValue: Prefer header note included in property description
- [ ] **Option 2 (Parent resource):**
  - [ ] H3 section "{enum-type} values" added after Properties table
  - [ ] Table has Member column (required) and Description column (optional)
  - [ ] Members listed in ascending order by numeric value (values not exposed)
  - [ ] For evolvable enums: unknownFutureValue description is "Evolvable enumeration sentinel value. Do not use."
  - [ ] For evolvable enums with members after unknownFutureValue: Introductory text about Prefer header included
  - [ ] Properties table links to H3 section
  - [ ] Parent resource property description excludes inline value listing (values are accessible via linked H3 section)
  - [ ] For subnamespaces: Fully qualified enum name used
- [ ] **Option 3 (Separate topic):**
  - [ ] File created with correct naming convention
  - [ ] Title is "{enum-type} enum type"
  - [ ] Description mentions evolvable enumeration if applicable
  - [ ] Members H2 section with Member column (required) and Description column (optional)
  - [ ] For evolvable enums: unknownFutureValue description is "Evolvable enumeration sentinel value. Don't use."
  - [ ] For evolvable enums with members after unknownFutureValue: Introductory text about Prefer header included
  - [ ] For subnamespaces: Namespace attribute added in page annotation
  - [ ] Parent resource Properties table links to enum topic
  - [ ] Parent resource property description excludes inline value listing (values are accessible via linked enum topic)

### For updating existing enumerations

- [ ] New enumeration members added to existing enumeration tables/files
- [ ] Order from Documentation Plan maintained
- [ ] All properties that consume updated enumerations have been updated
- [ ] Enum member lists in property descriptions match enumeration definition
- [ ] For evolvable enums: unknownFutureValue always documented
- [ ] For evolvable enums with new members after unknownFutureValue: Property descriptions and introductory text updated with Prefer header note

### For deprecating enumerations

- [ ] Section title or H1 title updated with "(deprecated)"
- [ ] Properties using enum updated with alternatives
- [ ] Deprecated members moved to end of table with "(deprecated)" suffix
