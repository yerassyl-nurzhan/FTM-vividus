Description: Task 2 Inviting members card via API

Scenario: Create a board
When I send HTTP POST to the relative URL '/1/boards/?key=f95526f030cfb910d5481bfa7d17cd1d&token=e3dc236292ba4f45c52eb58b01713ad4393dcab3ac1ce6bcd88edf19a985fa52&name=Vividus2'
Then the response code is equal to '200'
When I save JSON element from context by JSON path `$.id` to story variable `boardId`

Scenario: Invite members
Given request body: {
"email":<email>
}
When I send HTTP PUT to the relative URL '/1/boards/#{removeWrappingDoubleQuotes(${boardId})}/members?key=f95526f030cfb910d5481bfa7d17cd1d&token=e3dc236292ba4f45c52eb58b01713ad4393dcab3ac1ce6bcd88edf19a985fa52&email=<email>@test.com'
Then the response code is equal to '200'
Then JSON element by JSON path `$.fullName` is equal to `<email>`

Examples:
{transformer=FROM_LANDSCAPE}
|email|roman_bellic|niko_bellic|tommy_vercetti|