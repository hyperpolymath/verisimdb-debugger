;; SPDX-License-Identifier: PMPL-1.0-or-later
;; Media type: application/vnd.ecosystem+scm

(ecosystem
  (version "1.0.0")
  (name "verisimdb-debugger")
  (type "development-tool")
  (purpose "Interactive debugger and visualization tool for VeriSimDB queries, drift detection, and proof inspection")

  (position-in-ecosystem
    (layer "tooling")
    (role "debugging and observability")
    (dependencies-on ["verisimdb"])
    (provides-to ["verisimdb-developers" "query-authors" "system-operators"]))

  (related-projects
    (sibling-standard
      (project "verisimdb")
      (relationship "debugs and visualizes")
      (url "https://github.com/hyperpolymath/verisimdb")
      (rationale "VeriSimDB Debugger connects to VeriSimDB instances to trace query execution, visualize drift, and inspect ZKP proofs. It is a separate tool, not part of the core database."))

    (potential-consumer
      (project "vql-language-server")
      (relationship "could-use-for-diagnostics")
      (url "https://github.com/hyperpolymath/vql-language-server")
      (rationale "Future VQL LSP could leverage debugger's trace viewer for IDE integration."))

    (inspiration
      (project "postgres-debugger")
      (relationship "architectural-inspiration")
      (url "https://github.com/EnterpriseDB/pldebugger")
      (rationale "PostgreSQL's PL/pgSQL debugger inspired the query tracing and step-through design.")))

  (what-this-is
    "A terminal UI (TUI) debugger for VeriSimDB that provides:\n  - Query tracing: Step through VQL execution, show query plans, timing breakdowns\n  - Drift visualization: Cross-modal drift detection with diff views and repair suggestions\n  - Proof inspection: ZKP proof details, verification steps, circuit visualization\n  - Federation debugging: Multi-store coordination traces, consensus protocol logs\n\nTarget version: v2.0 (planned for VeriSimDB v1.x release)")

  (what-this-is-not
    "- NOT part of VeriSimDB core (separate tool that connects via API)\n- NOT a query builder or IDE (use vql-language-server for that)\n- NOT a production monitoring tool (use dedicated APM for that)\n- NOT a database migration tool\n- NOT a data visualization dashboard (focused on debugging, not analytics)"))
