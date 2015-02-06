package org.ohdsi.webapi.model.results;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * 
 * For OHDSI implementations, this corresponds to the HERACLES_ANALYSIS table
 *
 */
public class Analysis {

	public static final String ANALYSIS_ID = "ANALYSIS_ID";
	public static final String ANALYSIS_NAME = "ANALYSIS_NAME";
	public static final String STRATUM_1_NAME = "STRATUM_1_NAME";
	public static final String STRATUM_2_NAME = "STRATUM_2_NAME";
	public static final String STRATUM_3_NAME = "STRATUM_3_NAME";
	public static final String STRATUM_4_NAME = "STRATUM_4_NAME";
	public static final String STRATUM_5_NAME = "STRATUM_5_NAME";
	
	@JsonProperty(ANALYSIS_ID)
	private int analysisId;
	
	@JsonProperty(ANALYSIS_NAME)
	private String analysisName;
	
	@JsonProperty(STRATUM_1_NAME)
	private String stratum1Name;
	
	@JsonProperty(STRATUM_2_NAME)
	private String stratum2Name;
	
	@JsonProperty(STRATUM_3_NAME)
	private String stratum3Name;
	
	@JsonProperty(STRATUM_4_NAME)
	private String stratum4Name;
	
	@JsonProperty(STRATUM_5_NAME)
	private String stratum5Name;

	public int getAnalysisId() {
		return analysisId;
	}

	public void setAnalysisId(int analysisId) {
		this.analysisId = analysisId;
	}

	public String getAnalysisName() {
		return analysisName;
	}

	public void setAnalysisName(String analysisName) {
		this.analysisName = analysisName;
	}

	public String getStratum1Name() {
		return stratum1Name;
	}

	public void setStratum1Name(String stratum1Name) {
		this.stratum1Name = stratum1Name;
	}

	public String getStratum2Name() {
		return stratum2Name;
	}

	public void setStratum2Name(String stratum2Name) {
		this.stratum2Name = stratum2Name;
	}

	public String getStratum3Name() {
		return stratum3Name;
	}

	public void setStratum3Name(String stratum3Name) {
		this.stratum3Name = stratum3Name;
	}

	public String getStratum4Name() {
		return stratum4Name;
	}

	public void setStratum4Name(String stratum4Name) {
		this.stratum4Name = stratum4Name;
	}

	public String getStratum5Name() {
		return stratum5Name;
	}

	public void setStratum5Name(String stratum5Name) {
		this.stratum5Name = stratum5Name;
	}
	
	
}
