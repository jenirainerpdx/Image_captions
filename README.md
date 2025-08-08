# Image_captions
Very small app which accepts images and provides a generated caption. This has been built with Gradio so that it can be rapidly prototyped.

## Run with Docker
** _Make sure you run these commands OUTSIDE the venv. They won't work well inside the venv _**

Build the image:

- docker build -t image-captions .

Run the container (port 8000):

- docker run --rm -p 8000:8000 --name image-captions image-captions

## Viewing Logs

- The container is configured to send all application output to stdout/stderr in unbuffered mode.
- To follow logs from your host: (this is not strictly necessary. You will see the logs output simply from your docker run command, above) 
  - docker logs -f image-captions
- You should see lines like "Gradio app is running.", "Local URL: ...", and any server logs printed by Gradio/uvicorn.

Notes:
- Local URL will typically look like http://0.0.0.0:8000 or http://127.0.0.1:8000
- Public share URL (enabled via Gradio share=True) will look like https://xxxx.gradio.live

## Future Considerations
- #todo - consider alternatives to gradio for greater flexibility
- #todo - look at plugins for bluesky to auto-generate alt tags for images in posts.