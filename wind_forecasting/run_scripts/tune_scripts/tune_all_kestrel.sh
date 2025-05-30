sbatch tune_model_kestrel.sh informer $HOME/toolboxes/wind_forecasting_env/wind-forecasting/config/training/training_inputs_kestrel_awaken_pred60.yaml
sbatch tune_model_kestrel.sh informer $HOME/toolboxes/wind_forecasting_env/wind-forecasting/config/training/training_inputs_kestrel_awaken_pred300.yaml
sbatch tune_model_kestrel.sh autoformer $HOME/toolboxes/wind_forecasting_env/wind-forecasting/config/training/training_inputs_kestrel_awaken_pred60.yaml
sbatch tune_model_kestrel.sh autoformer $HOME/toolboxes/wind_forecasting_env/wind-forecasting/config/training/training_inputs_kestrel_awaken_pred300.yaml
sbatch tune_model_kestrel.sh spacetimeformer $HOME/toolboxes/wind_forecasting_env/wind-forecasting/config/training/training_inputs_kestrel_awaken_pred60.yaml
sbatch tune_model_kestrel.sh spacetimeformer $HOME/toolboxes/wind_forecasting_env/wind-forecasting/config/training/training_inputs_kestrel_awaken_pred300.yaml
sbatch tune_model_kestrel.sh tactis $HOME/toolboxes/wind_forecasting_env/wind-forecasting/config/training/training_inputs_kestrel_awaken_pred60.yaml
sbatch tune_model_kestrel.sh tactis $HOME/toolboxes/wind_forecasting_env/wind-forecasting/config/training/training_inputs_kestrel_awaken_pred300.yaml
