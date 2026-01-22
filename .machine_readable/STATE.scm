;; SPDX-License-Identifier: PMPL-1.0-or-later
;; VeriSimDB Debugger Project State
;; Media type: application/x-scheme
;; Last updated: 2026-01-22

(define-module (verisimdb-debugger state)
  #:version "0.1.0"
  #:updated "2026-01-22T13:30:00Z")

;; ============================================================================
;; METADATA
;; ============================================================================

(define metadata
  '((version . "0.1.0-alpha")
    (schema-version . "1.0")
    (created . "2026-01-22")
    (updated . "2026-01-22")
    (project . "VeriSimDB Debugger")
    (repo . "https://github.com/hyperpolymath/verisimdb-debugger")
    (license . "PMPL-1.0-or-later")
    (status . "alpha-development")))

;; ============================================================================
;; PROJECT CONTEXT
;; ============================================================================

(define project-context
  '((name . "VeriSimDB Debugger")
    (tagline . "Interactive TUI debugger for VeriSimDB queries, drift, and proofs")
    (description . "Terminal UI debugger for VeriSimDB providing query tracing, drift visualization, ZKP proof inspection, and federation debugging. Connects to VeriSimDB instances via API.")
    (tech-stack
      (language . "Rust")
      (tui-framework . "Ratatui + Crossterm")
      (async-runtime . "Tokio")
      (http-client . "reqwest")
      (target-version . "v2.0 (planned for VeriSimDB v1.x release)"))))

;; ============================================================================
;; CURRENT POSITION (2026-01-22)
;; ============================================================================

(define current-position
  '((phase . "alpha-development")
    (overall-completion . 5)
    (status . "Scaffolded, not yet functional")
    (components
      ((project-scaffolding . 100)
       (tui-framework . 0)
       (query-tracer . 0)
       (drift-visualizer . 0)
       (proof-inspector . 0)
       (federation-debugger . 0)
       (api-client . 0)
       (documentation . 10)))
    (working-features
      "- Cargo workspace configured
       - Dependencies declared (Ratatui, Tokio, reqwest)
       - ECOSYSTEM.scm created")
    (blocked-on
      "- VeriSimDB API specification (need endpoints for tracing, drift, proofs)
       - VeriSimDB v1.0 not yet implemented (no API to connect to)
       - TUI design not yet finalized")))

;; ============================================================================
;; ROUTE TO MVP
;; ============================================================================

(define route-to-mvp
  '((mvp-definition . "TUI debugger that connects to VeriSimDB, displays query traces, shows drift events, inspects ZKP proofs")
    (milestones
      ((milestone "M1: API Client")
       (status . "NOT-STARTED")
       (completion . 0)
       (items
         "🔲 Define VeriSimDB API client trait
          🔲 Implement HTTP client (reqwest)
          🔲 Parse API responses (JSON/CBOR)
          🔲 Error handling and retries
          🔲 Connection health check"))

      ((milestone "M2: Query Tracer")
       (status . "NOT-STARTED")
       (completion . 0)
       (items
         "🔲 Fetch query execution trace from API
          🔲 Display query plan (tree view)
          🔲 Show timing breakdown (parse, type-check, execute)
          🔲 Highlight slow operations
          🔲 Step-through query execution"))

      ((milestone "M3: Drift Visualizer")
       (status . "NOT-STARTED")
       (completion . 0)
       (items
         "🔲 Fetch drift events from API
          🔲 Display drift list (L0-L4, severity, affected hexads)
          🔲 Show drift diff view (old vs new values)
          🔲 Visualize cross-modal drift (graph of affected modalities)
          🔲 Suggest repair strategies"))

      ((milestone "M4: Proof Inspector")
       (status . "NOT-STARTED")
       (completion . 0)
       (items
         "🔲 Fetch ZKP proof details from API
          🔲 Display proof contract (predicate, type)
          🔲 Show proof verification steps
          🔲 Visualize circuit (if available)
          🔲 Show proof size, generation time"))

      ((milestone "M5: Federation Debugger")
       (status . "NOT-STARTED")
       (completion . 0)
       (items
         "🔲 Fetch federation status (stores, health)
          🔲 Display quorum voting logs
          🔲 Show consensus protocol traces
          🔲 Visualize network latency matrix (store-to-store)
          🔲 Highlight Byzantine faults"))

      ((milestone "M6: TUI Framework")
       (status . "NOT-STARTED")
       (completion . 0)
       (items
         "🔲 Main layout (tabs: Query, Drift, Proof, Federation)
          🔲 Navigation (arrow keys, vim bindings)
          🔲 Search/filter functionality
          🔲 Color theme (dark mode default)
          🔲 Help screen (keybindings)"))

      ((milestone "M7: Testing & Documentation")
       (status . "NOT-STARTED")
       (completion . 0)
       (items
         "🔲 Unit tests (API client, parsers)
          🔲 Integration tests (mock VeriSimDB API)
          🔲 User guide (README)
          🔲 Screenshot/GIF demos
          🔲 Installation instructions")))))

;; ============================================================================
;; BLOCKERS & ISSUES
;; ============================================================================

(define blockers-and-issues
  '((critical
      ("VeriSimDB v1.0 not yet implemented - no API to connect to"))

    (high
      ("API specification not finalized - don't know what endpoints to call"
       "TUI design not yet prototyped - unclear what views/layouts to implement"))

    (medium
      ("Unclear how to visualize ZKP circuits - need domain expert input"
       "Federation debugging requires live federated setup - hard to test locally"))

    (low
      ("Color theme not chosen"
       "Keybindings not finalized"))))

;; ============================================================================
;; CRITICAL NEXT ACTIONS
;; ============================================================================

(define critical-next-actions
  '((immediate
      "1. Wait for VeriSimDB v1.0 API specification
       2. Design TUI mockups (query tracer, drift visualizer)
       3. Prototype API client with mock data")

    (this-week
      "1. Implement basic TUI framework (tabs, navigation)
       2. Create mock VeriSimDB API server for testing
       3. Implement query tracer view (tree layout)")

    (this-month
      "1. Implement all 4 views (Query, Drift, Proof, Federation)
       2. Connect to live VeriSimDB instance
       3. Create demo video
       4. Write user guide")))

;; ============================================================================
;; SESSION HISTORY
;; ============================================================================

(define session-history
  '((session
      (date . "2026-01-22")
      (phase . "alpha-scaffolding")
      (accomplishments
        "- Created Cargo.toml with dependencies
         - Created ECOSYSTEM.scm
         - Created STATE.scm with alpha-development status
         - Marked as separate repo (ADR-006 in VeriSimDB)")
      (files-created
        "Cargo.toml
         ECOSYSTEM.scm
         .machine_readable/STATE.scm")
      (key-decisions
        "- Separate repo (not monorepo subdirectory)
         - Rust + Ratatui for TUI
         - Target v2.0 (planned for VeriSimDB v1.x release)
         - Alpha development status (5% complete, not functional yet)"))))

;; Export public API
(define-public metadata metadata)
(define-public project-context project-context)
(define-public current-position current-position)
(define-public route-to-mvp route-to-mvp)
(define-public blockers-and-issues blockers-and-issues)
(define-public critical-next-actions critical-next-actions)
(define-public session-history session-history)
