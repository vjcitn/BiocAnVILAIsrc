**NHGRI AnVIL – The “Analysis, Visualization, and Informatics Lab‑space”**

| Item | What it means |
|------|---------------|
| **NHGRI** | National Human Genome Research Institute, a division of the NIH that funds large‑scale genomics research.|
| **AnVIL** | A cloud‑native platform that brings together data, tools, workflows and infrastructure so that genomic
scientists can **share, analyze and reproduce** their work in a single environment. |
| **“Lab‑space”** | Think of it as a virtual lab bench that lives in the cloud. Researchers can check out datasets, run
pipelines, create notebooks, and publish results—all while staying compliant with privacy regulations. |

---

### Core Pieces of the AnVIL Ecosystem

| Component | Purpose |
|-----------|---------|
| **Data Commons** | Secure, high‑performance storage for billions of genomic reads, variants, phenotypes, etc.  Thecommons are built on the NIH **Gen3** framework and expose a **FAIR‑ready** API.  Example commons:  *TOPMed*, *All ofUs*, *dbGaP*, *eMERGE*, *NIH GWAS Catalog* … |
| **Terra** | The user‑interface and workflow engine.  Terra is the “frontend” of AnVIL – where you launch notebooks,run GATK, Spark jobs, or custom Docker containers.  It runs on a multi‑cloud (AWS, GCP, Azure) back‑end. |
| **GA4GH Standards** | AnVIL implements the Global Alliance for Genomics & Health APIs (e.g., Passports, Data Use Ontology) so that datasets can be queried, federated, and reused by the wider community. |
| **Security & Compliance** | All data are encrypted at rest and in transit.  Access is governed by the *HIPAA*‑compliant “Controlled‑Access” model, and data‑use agreements are enforced automatically via the *AnVIL Data Use Service* (DUS). |
| **Tools & Workflows** | A curated library of Docker images, Nextflow pipelines, Snakemake templates, and Jupyter‑Lab notebooks.  These can be shared as “Apps” and re‑used by other projects. |
| **APIs & SDKs** | Python, R, and command‑line libraries (e.g., *anvil-client*) that let developers build custom analytics or integrate AnVIL into other pipelines. |

---

### Why Researchers Use AnVIL

| Need | How AnVIL Helps |
|------|-----------------|
| **Data Sharing** | You can publish a dataset once, and anyone in the NIH community can access it (within the permissions granted). |
| **Scalability** | No need to provision your own HPC cluster; AnVIL scales automatically for terabytes of sequencing data. |
| **Reproducibility** | All code, parameters, and data lineage are tracked.  You can share a “project” that others can clone and run verbatim. |
| **Cost‑Efficiency** | Compute is billed by the hour, and the platform optimizes resource use.  Many NIH projects receive cost‑sharing or credit. |
| **Interoperability** | Because the platform uses GA4GH standards, you can federate queries across other NIH data commons (e.g., combine *TOPMed* data with *All of Us* data). |

---

### Typical Workflow in AnVIL

1. **Import Data** – Upload your FASTQ/VCF files to a Data Commons or attach a controlled‑access dataset.
2. **Create a Project** – Spin up a new “project” in Terra, assign collaborators, and define a workspace.
3. **Select Tools** – Drag‑and‑drop a ready‑made pipeline (e.g., GATK Best Practices) or write your own notebook.
4. **Run Analysis** – Execute on cloud‑based compute (Spot‑instances, pre‑emptible VMs, or GPUs).
5. **Visualize** – Use built‑in charting or export to external BI tools.
6. **Share & Publish** – Publish results as a “Project Snapshot” that others can fork and replicate.
7. **Archive** – Archive the workspace; data stays in the Data Commons for future reuse.

---

### Quick Stats (as of 2026)

| Metric | Value |
|--------|-------|
| Total public datasets hosted | > 300 (TOPMed, All of Us, etc.) |
| Annual compute hours | > 10 million |
| Cloud platforms | AWS, GCP, Azure |
| Active projects | ~ 3,000 researchers globally |
| Data usage | > 1 PB per month |

---

### Bottom Line

**NHGRI AnVIL is the NIH’s integrated, cloud‑native “lab‑space” for genomic research.** It bundles secure data storage,
reproducible workflows, and scalable compute into a single platform that follows FAIR and GA4GH standards.  Whether
you’re a bench scientist, a computational biologist, or a data engineer, AnVIL lets you move from raw sequence to
insight without the overhead of building your own infrastructure.
