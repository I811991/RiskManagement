/**
 * 
 * @After(event = { "READ" }, entity = "riskmanagement_I811991Service.Risks")
 * @param {Object} context - The root parameter for each application logic
 * @param {Object} context.request - User information, tenant-specific CDS model, headers and query parameters
 * @param {Object} [context.results] - For the After phase only: the result of the event processing
 */
module.exports = async function(context) {
    const risksData = context.results;
    const risks = Array.isArray(risksData) ? risksData : [risksData];
    risks.forEach(risk => {
        if (risk.impact >= 100000) {
            risk.criticality = 1;
        } else {
            risk.criticality = 2;
        }
    });
};
