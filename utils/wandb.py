import wandb


def get_num_runs(wandb_enabled: bool, project_name=""):
    fallback_value: int = 1

    if not wandb_enabled:
        return fallback_value

    try:
        return len(wandb.Api().runs(project_name))
    except ValueError:
        return 0
    except:
        return fallback_value
