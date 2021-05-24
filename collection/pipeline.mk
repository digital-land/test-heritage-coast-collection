HERITAGE_COAST_DATASET=$(DATASET_DIR)heritage-coast.csv
HERITAGE_COAST_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)heritage-coast/3aff0c34b5829ab77708402faa95485ac463ae39b198bebd691b6431669e2fda.csv

$(TRANSFORMED_DIR)heritage-coast/3aff0c34b5829ab77708402faa95485ac463ae39b198bebd691b6431669e2fda.csv: collection/resource/3aff0c34b5829ab77708402faa95485ac463ae39b198bebd691b6431669e2fda
	$(run-pipeline)

$(HERITAGE_COAST_DATASET): $(HERITAGE_COAST_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(HERITAGE_COAST_TRANSFORMED_FILES)

dataset:: $(HERITAGE_COAST_DATASET)
