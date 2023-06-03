# Task 1. Launch Vertex AI Workbench notebook

To create and launch a Vertex AI Workbench notebook:

1. In the Navigation Menu Navigation menu icon, click Vertex AI > Workbench.

2. On the Workbench page, click Enable Notebooks API (if it isn't enabled yet), then click New Notebook.

3. In the Customize instance menu, select TensorFlow Enterprise and choose the latest version of TensorFlow Enterprise 2.x (with LTS) > Without GPUs.

4. Name the notebook.

5. Set Region to us-central1 and Zone to any zone within the designated region.

6. In the Notebook properties, click the pencil icon pencil icon to edit the instance properties.

7. Click Machine type and then select e2-standard-2 for Machine type.

8. Leave the remaining fields at their default and click Create.

After a few minutes, the Workbench page lists your instance, followed by Open JupyterLab.

9. Click Open JupyterLab to open JupyterLab in a new tab. If you get a message saying beatrix jupyterlab needs to be included in the build, just ignore it.

**Note**: If Prompted, Click `Build` for Build Recommended pop-up.

# Task 2. Clone the example repo within your Workbench instance

To clone the training-data-analyst repository in your JupyterLab instance:

1. In JupyterLab, click the Terminal icon to open a new terminal.
2. At the command-line prompt, type the following command and press ENTER:

```bash
git clone https://github.com/GoogleCloudPlatform/training-data-analyst
```

3. To confirm that you have cloned the repository, in the left panel, double click the training-data-analyst folder to see its contents.

It will take several minutes for the notebook to clone.

**Note**: If Prompted, Click `Dismiss` for Build Failed pop-up to ignore the message.

## Navigate to the example notebook

1. Navigate to training-data-analyst/self-paced-labs/ai-platform-qwikstart and open ai_platform_qwik_start.ipynb.

2. On the notebook toolbar, navigate to Edit > Clear All Outputs and then Run the cells one by one.

When prompted, come back to these instructions to check your progress.
