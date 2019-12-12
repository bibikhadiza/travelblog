window.addEventListener('load', function() {
  let title = document.getElementById('title');
  let content = document.getElementById('content');
  document.getElementById('Create post').onsubmit = (event) =>{
    event.preventDefault()
    event.stopPropagation()
    var createPost = (input) => {
      debugger;
      return JSON.stringify({
        query:
          `mutation {
            createPost(input: {
              title: "${input.title.value}"
              content: "${input.content.value}"
              userId: "2"
              locationId: "1"
            }) {
              post {
                title
                content
              }
            }
          }`
      }
    )
  }

    fetch('/graphql', {
      method: 'POST',
      body: createPost({title, content}),
      headers: {
        'Content-Type': 'application/json'
      }
    })
    return false
  }
});

