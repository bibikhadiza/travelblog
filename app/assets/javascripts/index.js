window.addEventListener('load', function() {
  let title = document.getElementById('title');
  let content = document.getElementById('content');
  document.getElementById('Create post').onsubmit = () =>{
    var createPost = (input) => JSON.stringify({
    query:
      `mutation {
        createPost(input: ${input}) {
          post {
            title
            content
          }
        }
      }`
    })

    fetch('/graphql', {
      method: 'POST',
      body: createPost({title, content}),
      headers: {
        'Content-Type': 'application/json'
      }
    })
  }

});

