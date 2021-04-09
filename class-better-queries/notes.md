---
```bash
aws dynamodb query --table-name Music --key-condition-expression "Artist = :v1 and begins_with(SongTitle, :v2)" --expression-attribute-values file://inputValues/values.json
```
values.json
```json
{
    ":v1": {"S": "David Bowie"},    
    ":v2": {"S": "H"}    
}
```
---
```bash
aws dynamodb query --table-name Music --key-condition-expression "Artist = :v1" --filter-expression "attribute_exists(Note)" --expression-attribute-values file://values2.json
```
values2.json
```json
{
    ":v1": {"S": "David Bowie"}
}
```
---
```bash
aws dynamodb query --table-name Music --key-condition-expression "Artist = :v1" --filter-expression "Released IN (:v2,:v3,:v4)" --expression-attribute-values file://values3.json
```
values3.json
```json
{
    ":v1": {"S": "David Bowie"},
    ":v2": {"N": "1971"},
    ":v3": {"N": "1984"},
    ":v4": {"N": "1990"}
}
```
---
```bash
aws dynamodb query --table-name Music --key-condition-expression "Artist = :v1 AND SongTitle BETWEEN :v2 AND :v3" --expression-attribute-values file://values4.json
```
values4.json
```json
{
    ":v1": {"S": "David Bowie"},
    ":v2": {"S": "A"},
    ":v3": {"S": "M"}
}
```
---
```bash
aws dynamodb query --table-name Music --key-condition-expression "Artist = :v1" --filter-expression "Released : :v2" --expression-attribute-values file://values5.json
```
values5.json
```json
{
    ":v1": {"S": "U2"},
    ":v2": {"N": "2000"}
}
```
---
