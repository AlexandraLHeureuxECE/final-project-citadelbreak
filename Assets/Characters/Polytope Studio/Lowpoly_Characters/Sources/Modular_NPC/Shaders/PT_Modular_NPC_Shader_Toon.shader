// Made with Amplify Shader Editor v1.9.8
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Polytope Studio/ PT_Medieval Modular NPC Shader Toon"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[HDR]_SKINCOLOR1("SKIN COLOR", Color) = (2.02193,1.0081,0.6199315,0)
		[HDR]_COATOFARMSCOLOR("COAT OF ARMS COLOR", Color) = (1,0,0,0)
		[NoScaleOffset]_COATOFARMSMASK("COAT OF ARMS MASK", 2D) = "black" {}
		_CEL1SIZE("CEL 1 SIZE", Range( 0 , 1)) = 0.1
		[HDR]_EYESCOLOR1("EYES COLOR", Color) = (0.0734529,0.1320755,0.05046281,1)
		_CEL2SIZE("CEL 2 SIZE", Range( 0 , 1)) = 0.4
		_CEL3SIZE("CEL 3 SIZE", Range( 0 , 1)) = 0.8
		[HDR]_HAIRCOLOR1("HAIR COLOR", Color) = (1,0,0,0)
		_CEL1POWER("CEL 1 POWER", Range( 0 , 1)) = 0.15
		_CEL2POWER("CEL 2 POWER", Range( 0 , 1)) = 0.15
		[HDR]_SCLERACOLOR1("SCLERA COLOR", Color) = (0.9056604,0.8159487,0.8159487,0)
		_CEL3POWER("CEL 3 POWER", Range( 0 , 1)) = 0.15
		[HDR]_CEL1COLOR("CEL 1 COLOR", Color) = (1,1,1,0)
		[HDR]_LIPSCOLOR1("LIPS COLOR", Color) = (0.8301887,0.3185886,0.2780349,0)
		[HDR]_CEL2COLOR("CEL 2 COLOR", Color) = (1,1,1,0)
		[HDR]_OTHERCOLOR1("OTHER COLOR", Color) = (0.5188679,0.4637216,0.3206212,0)
		[HDR]_CEL3COLOR("CEL 3 COLOR", Color) = (1,1,1,0)
		[HDR]_METAL1COLOR1("METAL 1 COLOR", Color) = (0.8792791,0.9922886,1.007606,0)
		[HDR]_METAL2COLOR1("METAL 2 COLOR", Color) = (0.4674706,0.4677705,0.5188679,0)
		[HDR]_METAL3COLOR1("METAL 3 COLOR", Color) = (0.4383232,0.4383232,0.4716981,0)
		[HDR]_METAL4COLOR1("METAL 4 COLOR", Color) = (0.4383232,0.4383232,0.4716981,0)
		[HDR]_LEATHER1COLOR1("LEATHER 1 COLOR", Color) = (0.4811321,0.2041155,0.08851016,1)
		[HDR]_LEATHER2COLOR1("LEATHER 2 COLOR", Color) = (0.4245283,0.190437,0.09011215,1)
		[HDR]_LEATHER3COLOR1("LEATHER 3 COLOR", Color) = (0.1698113,0.04637412,0.02963688,1)
		[HDR]_LEATHER4COLOR1("LEATHER 4 COLOR", Color) = (0.1698113,0.04637412,0.02963688,1)
		[HDR]_CLOTH1COLOR1("CLOTH 1 COLOR", Color) = (0,0.1792453,0.05062231,0)
		[HDR]_CLOTH2COLOR1("CLOTH 2 COLOR", Color) = (1,0,0,0)
		[HDR]_CLOTH3COLOR1("CLOTH 3 COLOR", Color) = (0.3962264,0.3391397,0.2710039,0)
		[HDR]_CLOTH4COLOR1("CLOTH 4 COLOR", Color) = (0.2011392,0.3773585,0.3739074,0)
		[HDR]_FEATHERS1COLOR1("FEATHERS 1 COLOR", Color) = (0.7735849,0.492613,0.492613,0)
		[HDR]_FEATHERS2COLOR1("FEATHERS 2 COLOR", Color) = (0.6792453,0,0,0)
		[HideInInspector]_TextureSample1("Texture Sample 0", 2D) = "white" {}
		[HideInInspector]_TextureSample3("Texture Sample 2", 2D) = "white" {}
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}


		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25

		[HideInInspector][ToggleOff] _SpecularHighlights("Specular Highlights", Float) = 1
		[HideInInspector][ToggleOff] _EnvironmentReflections("Environment Reflections", Float) = 1
		[HideInInspector][ToggleOff] _ReceiveShadows("Receive Shadows", Float) = 1.0

		[HideInInspector] _QueueOffset("_QueueOffset", Float) = 0
        [HideInInspector] _QueueControl("_QueueControl", Float) = -1

        [HideInInspector][NoScaleOffset] unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}

		//[HideInInspector][ToggleUI] _AddPrecomputedVelocity("Add Precomputed Velocity", Float) = 1
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Opaque" "Queue"="Geometry" "UniversalMaterialType"="Lit" }

		Cull Back
		ZWrite On
		ZTest LEqual
		Offset 0 , 0
		AlphaToMask Off

		

		HLSLINCLUDE
		#pragma target 4.5
		#pragma prefer_hlslcc gles
		// ensure rendering platforms toggle list is visible

		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Filtering.hlsl"

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}

		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS
		ENDHLSL

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="UniversalForward" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			

			HLSLPROGRAM

			#pragma multi_compile_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma shader_feature_local _RECEIVE_SHADOWS_OFF
			#pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _EMISSION
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 170003


			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS
            #pragma multi_compile _ EVALUATE_SH_MIXED EVALUATE_SH_VERTEX
			#pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
			#pragma multi_compile_fragment _ _SHADOWS_SOFT _SHADOWS_SOFT_LOW _SHADOWS_SOFT_MEDIUM _SHADOWS_SOFT_HIGH
			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile _ _LIGHT_LAYERS
			#pragma multi_compile_fragment _ _LIGHT_COOKIES
			#pragma multi_compile _ _FORWARD_PLUS

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile _ USE_LEGACY_LIGHTMAPS

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_FORWARD

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ProbeVolumeVariants.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_NORMAL


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float4 lightmapUVOrVertexSH : TEXCOORD1;
				#if defined(ASE_FOG) || defined(_ADDITIONAL_LIGHTS_VERTEX)
					half4 fogFactorAndVertexLight : TEXCOORD2;
				#endif
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					float4 shadowCoord : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
					float2 dynamicLightmapUV : TEXCOORD7;
				#endif	
				#if defined(USE_APV_PROBE_OCCLUSION)
					float4 probeOcclusion : TEXCOORD8;
				#endif
				float4 ase_texcoord9 : TEXCOORD9;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _TextureSample3;
			sampler2D _TextureSample1;
			sampler2D _COATOFARMSMASK;


			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				output.ase_texcoord9.xy = input.texcoord.xy;
				output.ase_texcoord9.zw = input.texcoord1.xy;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif
				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( input.normalOS, input.tangentOS );

				output.tSpace0 = float4( normalInput.normalWS, vertexInput.positionWS.x );
				output.tSpace1 = float4( normalInput.tangentWS, vertexInput.positionWS.y );
				output.tSpace2 = float4( normalInput.bitangentWS, vertexInput.positionWS.z );

				#if defined(LIGHTMAP_ON)
					OUTPUT_LIGHTMAP_UV( input.texcoord1, unity_LightmapST, output.lightmapUVOrVertexSH.xy );
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					output.dynamicLightmapUV.xy = input.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				OUTPUT_SH4( vertexInput.positionWS, normalInput.normalWS.xyz, GetWorldSpaceNormalizeViewDir( vertexInput.positionWS ), output.lightmapUVOrVertexSH.xyz, output.probeOcclusion );

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					output.lightmapUVOrVertexSH.zw = input.texcoord.xy;
					output.lightmapUVOrVertexSH.xy = input.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				#if defined(ASE_FOG) || defined(_ADDITIONAL_LIGHTS_VERTEX)
					output.fogFactorAndVertexLight = 0;
					#if defined(ASE_FOG) && !defined(_FOG_FRAGMENT)
						output.fogFactorAndVertexLight.x = ComputeFogFactor(vertexInput.positionCS.z);
					#endif
					#ifdef _ADDITIONAL_LIGHTS_VERTEX
						half3 vertexLight = VertexLighting( vertexInput.positionWS, normalInput.normalWS );
						output.fogFactorAndVertexLight.yzw = vertexLight;
					#endif
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;
				output.clipPosV = vertexInput.positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				output.texcoord = input.texcoord;
				output.texcoord1 = input.texcoord1;
				output.texcoord2 = input.texcoord2;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				output.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				output.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				output.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag ( PackedVaryings input
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						#ifdef _WRITE_RENDERING_LAYERS
						, out float4 outRenderingLayers : SV_Target1
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input);

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (input.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( input.tSpace0.xyz );
					float3 WorldTangent = input.tSpace1.xyz;
					float3 WorldBiTangent = input.tSpace2.xyz;
				#endif

				float3 WorldPosition = float3(input.tSpace0.w,input.tSpace1.w,input.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				float2 NormalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(input.positionCS);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = input.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#endif

				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float2 uv_TextureSample3 = input.ase_texcoord9.xy * _TextureSample3_ST.xy + _TextureSample3_ST.zw;
				float4 tex2DNode722 = tex2D( _TextureSample3, uv_TextureSample3 );
				float4 color721 = IsGammaSpace() ? float4(0.4980392,1,1,1) : float4(0.2122307,1,1,1);
				float2 uv_TextureSample1 = input.ase_texcoord9.xy * _TextureSample1_ST.xy + _TextureSample1_ST.zw;
				float4 tex2DNode724 = tex2D( _TextureSample1, uv_TextureSample1 );
				float4 lerpResult729 = lerp( float4( 0,0,0,0 ) , ( tex2DNode722 * _FEATHERS2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color721.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color728 = IsGammaSpace() ? float4(0.4980392,1,0.4980392,1) : float4(0.2122307,1,0.2122307,1);
				float4 lerpResult737 = lerp( lerpResult729 , ( tex2DNode722 * _FEATHERS1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color728.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color732 = IsGammaSpace() ? float4(0,0,1,1) : float4(0,0,1,1);
				float4 lerpResult745 = lerp( lerpResult737 , ( tex2DNode722 * _CLOTH4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color732.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color734 = IsGammaSpace() ? float4(0,1,1,1) : float4(0,1,1,1);
				float4 lerpResult750 = lerp( lerpResult745 , ( tex2DNode722 * _CLOTH3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color734.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color741 = IsGammaSpace() ? float4(0,1,0,1) : float4(0,1,0,1);
				float4 lerpResult754 = lerp( lerpResult750 , ( tex2DNode722 * _CLOTH2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color741.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color748 = IsGammaSpace() ? float4(0,0.4980392,0,1) : float4(0,0.2122307,0,1);
				float4 lerpResult761 = lerp( lerpResult754 , ( tex2DNode722 * _CLOTH1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color748.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color735 = IsGammaSpace() ? float4(1,0.4980392,0.4980392,1) : float4(1,0.2122307,0.2122307,1);
				float4 lerpResult766 = lerp( lerpResult761 , ( tex2DNode722 * _LEATHER4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color735.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color746 = IsGammaSpace() ? float4(1,1,0.4980392,1) : float4(1,1,0.2122307,1);
				float4 lerpResult771 = lerp( lerpResult766 , ( tex2DNode722 * _LEATHER3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color746.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color753 = IsGammaSpace() ? float4(1,0,1,1) : float4(1,0,1,1);
				float4 lerpResult776 = lerp( lerpResult771 , ( tex2DNode722 * _LEATHER2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color753.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color755 = IsGammaSpace() ? float4(1,0.4980392,1,1) : float4(1,0.2122307,1,1);
				float4 lerpResult782 = lerp( lerpResult776 , ( tex2DNode722 * _LEATHER1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color755.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color762 = IsGammaSpace() ? float4(0.4980392,0.4980392,1,1) : float4(0.2122307,0.2122307,1,1);
				float4 lerpResult788 = lerp( lerpResult782 , ( tex2DNode722 * _METAL4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color762.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color769 = IsGammaSpace() ? float4(0,0.4980392,0.4980392,1) : float4(0,0.2122307,0.2122307,1);
				float4 lerpResult794 = lerp( lerpResult788 , ( tex2DNode722 * _METAL3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color769.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color770 = IsGammaSpace() ? float4(0,0,0.4980392,1) : float4(0,0,0.2122307,1);
				float4 lerpResult799 = lerp( lerpResult794 , ( tex2DNode722 * _METAL2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color770.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color778 = IsGammaSpace() ? float4(0.4980392,0,0.4980392,1) : float4(0.2122307,0,0.2122307,1);
				float4 lerpResult803 = lerp( lerpResult799 , ( tex2DNode722 * _METAL1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color778.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color784 = IsGammaSpace() ? float4(1,1,0,1) : float4(1,1,0,1);
				float4 lerpResult807 = lerp( lerpResult803 , ( tex2DNode722 * _OTHERCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color784.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color786 = IsGammaSpace() ? float4(0.4980392,0.4980392,0,1) : float4(0.2122307,0.2122307,0,1);
				float4 lerpResult811 = lerp( lerpResult807 , ( tex2DNode722 * _LIPSCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color786.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color792 = IsGammaSpace() ? float4(0.4980392,0.4980392,0.4980392,1) : float4(0.2122307,0.2122307,0.2122307,1);
				float4 lerpResult815 = lerp( lerpResult811 , ( tex2DNode722 * _SCLERACOLOR1 ) , saturate( ( 1.0 - ( ( distance( color792.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color790 = IsGammaSpace() ? float4(1,0,0,1) : float4(1,0,0,1);
				float4 lerpResult820 = lerp( lerpResult815 , ( tex2DNode722 * _EYESCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color790.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color804 = IsGammaSpace() ? float4(1,0.4980392,0,1) : float4(1,0.2122307,0,1);
				float4 lerpResult821 = lerp( lerpResult820 , ( tex2DNode722 * _HAIRCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color804.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color806 = IsGammaSpace() ? float4(0.4980392,0,0,1) : float4(0.2122307,0,0,1);
				float4 lerpResult823 = lerp( lerpResult821 , ( tex2DNode722 * _SKINCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color806.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float2 uv1_COATOFARMSMASK10 = input.ase_texcoord9.zw;
				float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv1_COATOFARMSMASK10 ).a );
				float4 temp_cast_40 = (temp_output_9_0).xxxx;
				float4 temp_output_1_0_g139 = temp_cast_40;
				float4 color25 = IsGammaSpace() ? float4(0,0,0,0) : float4(0,0,0,0);
				float4 temp_output_2_0_g139 = color25;
				float temp_output_11_0_g139 = distance( temp_output_1_0_g139 , temp_output_2_0_g139 );
				float2 _Vector0 = float2(1.6,1);
				float4 lerpResult21_g139 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g139 , saturate( ( ( temp_output_11_0_g139 - _Vector0.x ) / max( _Vector0.y , 1E-05 ) ) ));
				float4 lerpResult64 = lerp( lerpResult823 , lerpResult21_g139 , ( 1.0 - temp_output_9_0 ));
				float3 ase_viewDirWS = normalize( WorldViewDirection );
				float fresnelNdotV369 = dot( WorldNormal, ase_viewDirWS );
				float fresnelNode369 = ( 0.0 + 1.0 * pow( max( 1.0 - fresnelNdotV369 , 0.0001 ), 1.0 ) );
				float4 temp_cast_41 = (step( fresnelNode369 , _CEL1SIZE )).xxxx;
				float4 blendOpSrc689 = temp_cast_41;
				float4 blendOpDest689 = _CEL1COLOR;
				float4 temp_cast_42 = ((0.0 + (_CEL1POWER - 0.0) * (3.0 - 0.0) / (1.0 - 0.0))).xxxx;
				float4 blendOpSrc683 = ( saturate( ( blendOpSrc689 * blendOpDest689 ) ));
				float4 blendOpDest683 = temp_cast_42;
				float4 blendOpSrc661 = ( blendOpSrc683 * blendOpDest683 );
				float4 blendOpDest661 = lerpResult64;
				float fresnelNdotV365 = dot( WorldNormal, ase_viewDirWS );
				float fresnelNode365 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV365, 1.0 ) );
				float4 temp_cast_43 = (step( fresnelNode365 , _CEL2SIZE )).xxxx;
				float4 blendOpSrc696 = temp_cast_43;
				float4 blendOpDest696 = _CEL2COLOR;
				float4 temp_cast_44 = ((0.0 + (_CEL2POWER - 0.0) * (3.0 - 0.0) / (1.0 - 0.0))).xxxx;
				float4 blendOpSrc686 = ( saturate( ( blendOpSrc696 * blendOpDest696 ) ));
				float4 blendOpDest686 = temp_cast_44;
				float4 blendOpSrc662 = ( blendOpSrc686 * blendOpDest686 );
				float4 blendOpDest662 = lerpResult64;
				float fresnelNdotV368 = dot( WorldNormal, ase_viewDirWS );
				float fresnelNode368 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV368, 1.0 ) );
				float4 temp_cast_45 = (step( fresnelNode368 , _CEL3SIZE )).xxxx;
				float4 blendOpSrc698 = temp_cast_45;
				float4 blendOpDest698 = _CEL3COLOR;
				float4 temp_cast_46 = ((0.0 + (_CEL3POWER - 0.0) * (3.0 - 0.0) / (1.0 - 0.0))).xxxx;
				float4 blendOpSrc687 = ( saturate( ( blendOpSrc698 * blendOpDest698 ) ));
				float4 blendOpDest687 = temp_cast_46;
				float4 blendOpSrc663 = ( blendOpSrc687 * blendOpDest687 );
				float4 blendOpDest663 = lerpResult64;
				

				float3 BaseColor = float3(0.5, 0.5, 0.5);
				float3 Normal = float3(0, 0, 1);
				float3 Emission = ( lerpResult64 + ( ( blendOpSrc661 * blendOpDest661 ) + ( saturate( ( blendOpSrc662 * blendOpDest662 ) )) + ( saturate( ( blendOpSrc663 * blendOpDest663 ) )) ) ).rgb;
				float3 Specular = 0.5;
				float Metallic = 0;
				float Smoothness = 0.5;
				float Occlusion = 1;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _CLEARCOAT
					float CoatMask = 0;
					float CoatSmoothness = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.positionCS = input.positionCS;
				inputData.viewDirectionWS = WorldViewDirection;

				#ifdef _NORMALMAP
						#if _NORMAL_DROPOFF_TS
							inputData.normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent, WorldBiTangent, WorldNormal));
						#elif _NORMAL_DROPOFF_OS
							inputData.normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							inputData.normalWS = Normal;
						#endif
					inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				#else
					inputData.normalWS = WorldNormal;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					inputData.shadowCoord = ShadowCoords;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					inputData.shadowCoord = TransformWorldToShadowCoord(inputData.positionWS);
				#else
					inputData.shadowCoord = float4(0, 0, 0, 0);
				#endif

				#ifdef ASE_FOG
					inputData.fogCoord = InitializeInputDataFog(float4(inputData.positionWS, 1.0), input.fogFactorAndVertexLight.x);
				#endif
				#ifdef _ADDITIONAL_LIGHTS_VERTEX
					inputData.vertexLighting = input.fogFactorAndVertexLight.yzw;
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = input.lightmapUVOrVertexSH.xyz;
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					inputData.bakedGI = SAMPLE_GI(input.lightmapUVOrVertexSH.xy, input.dynamicLightmapUV.xy, SH, inputData.normalWS);
					inputData.shadowMask = SAMPLE_SHADOWMASK(input.lightmapUVOrVertexSH.xy);
				#elif !defined(LIGHTMAP_ON) && (defined(PROBE_VOLUMES_L1) || defined(PROBE_VOLUMES_L2))
					inputData.bakedGI = SAMPLE_GI( SH, GetAbsolutePositionWS(inputData.positionWS),
						inputData.normalWS,
						inputData.viewDirectionWS,
						input.positionCS.xy,
						input.probeOcclusion,
						inputData.shadowMask );
				#else
					inputData.bakedGI = SAMPLE_GI(input.lightmapUVOrVertexSH.xy, SH, inputData.normalWS);
					inputData.shadowMask = SAMPLE_SHADOWMASK(input.lightmapUVOrVertexSH.xy);
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif

				inputData.normalizedScreenSpaceUV = NormalizedScreenSpaceUV;

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = input.dynamicLightmapUV.xy;
					#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = input.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
					#if defined(USE_APV_PROBE_OCCLUSION)
						inputData.probeOcclusion = input.probeOcclusion;
					#endif
				#endif

				SurfaceData surfaceData;
				surfaceData.albedo              = BaseColor;
				surfaceData.metallic            = saturate(Metallic);
				surfaceData.specular            = Specular;
				surfaceData.smoothness          = saturate(Smoothness),
				surfaceData.occlusion           = Occlusion,
				surfaceData.emission            = Emission,
				surfaceData.alpha               = saturate(Alpha);
				surfaceData.normalTS            = Normal;
				surfaceData.clearCoatMask       = 0;
				surfaceData.clearCoatSmoothness = 1;

				#ifdef _CLEARCOAT
					surfaceData.clearCoatMask       = saturate(CoatMask);
					surfaceData.clearCoatSmoothness = saturate(CoatSmoothness);
				#endif

				#ifdef _DBUFFER
					ApplyDecalToSurfaceData(input.positionCS, surfaceData, inputData);
				#endif

				#ifdef _ASE_LIGHTING_SIMPLE
					half4 color = UniversalFragmentBlinnPhong( inputData, surfaceData);
				#else
					half4 color = UniversalFragmentPBR( inputData, surfaceData);
				#endif

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;

					#define SUM_LIGHT_TRANSMISSION(Light)\
						float3 atten = Light.color * Light.distanceAttenuation;\
						atten = lerp( atten, atten * Light.shadowAttenuation, shadow );\
						half3 transmission = max( 0, -dot( inputData.normalWS, Light.direction ) ) * atten * Transmission;\
						color.rgb += BaseColor * transmission;

					SUM_LIGHT_TRANSMISSION( GetMainLight( inputData.shadowCoord ) );

					#if defined(_ADDITIONAL_LIGHTS)
						uint meshRenderingLayers = GetMeshRenderingLayer();
						uint pixelLightCount = GetAdditionalLightsCount();
						#if USE_FORWARD_PLUS
							[loop] for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, MAX_VISIBLE_LIGHTS); lightIndex++)
							{
								FORWARD_PLUS_SUBTRACTIVE_LIGHT_CHECK

								Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
								#ifdef _LIGHT_LAYERS
								if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
								#endif
								{
									SUM_LIGHT_TRANSMISSION( light );
								}
							}
						#endif
						LIGHT_LOOP_BEGIN( pixelLightCount )
							Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
							#ifdef _LIGHT_LAYERS
							if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
							#endif
							{
								SUM_LIGHT_TRANSMISSION( light );
							}
						LIGHT_LOOP_END
					#endif
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					#define SUM_LIGHT_TRANSLUCENCY(Light)\
						float3 atten = Light.color * Light.distanceAttenuation;\
						atten = lerp( atten, atten * Light.shadowAttenuation, shadow );\
						half3 lightDir = Light.direction + inputData.normalWS * normal;\
						half VdotL = pow( saturate( dot( inputData.viewDirectionWS, -lightDir ) ), scattering );\
						half3 translucency = atten * ( VdotL * direct + inputData.bakedGI * ambient ) * Translucency;\
						color.rgb += BaseColor * translucency * strength;

					SUM_LIGHT_TRANSLUCENCY( GetMainLight( inputData.shadowCoord ) );

					#if defined(_ADDITIONAL_LIGHTS)
						uint meshRenderingLayers = GetMeshRenderingLayer();
						uint pixelLightCount = GetAdditionalLightsCount();
						#if USE_FORWARD_PLUS
							[loop] for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, MAX_VISIBLE_LIGHTS); lightIndex++)
							{
								FORWARD_PLUS_SUBTRACTIVE_LIGHT_CHECK

								Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
								#ifdef _LIGHT_LAYERS
								if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
								#endif
								{
									SUM_LIGHT_TRANSLUCENCY( light );
								}
							}
						#endif
						LIGHT_LOOP_BEGIN( pixelLightCount )
							Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
							#ifdef _LIGHT_LAYERS
							if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
							#endif
							{
								SUM_LIGHT_TRANSLUCENCY( light );
							}
						LIGHT_LOOP_END
					#endif
				}
				#endif

				#ifdef ASE_REFRACTION
					float4 projScreenPos = ScreenPos / ScreenPos.w;
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, float4( WorldNormal,0 ) ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos.xy ) * RefractionColor;
					color.rgb = lerp( refraction, color.rgb, color.a );
					color.a = 1;
				#endif

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3(0,0,0), inputData.fogCoord);
					#else
						color.rgb = MixFog(color.rgb, inputData.fogCoord);
					#endif
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				#ifdef _WRITE_RENDERING_LAYERS
					uint renderingLayers = GetMeshRenderingLayer();
					outRenderingLayers = float4( EncodeMeshRenderingLayer( renderingLayers ), 0, 0, 0 );
				#endif

				return color;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off
			ColorMask 0

			HLSLPROGRAM

			#pragma multi_compile _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _EMISSION
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 170003


			#pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_SHADOWCASTER

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float3 positionWS : TEXCOORD1;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD2;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			float3 _LightDirection;
			float3 _LightPosition;

			PackedVaryings VertexFunction( Attributes input )
			{
				PackedVaryings output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( output );

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;

				float3 positionWS = TransformObjectToWorld( input.positionOS.xyz );
				float3 normalWS = TransformObjectToWorldDir(input.normalOS);

				#if _CASTING_PUNCTUAL_LIGHT_SHADOW
					float3 lightDirectionWS = normalize(_LightPosition - positionWS);
				#else
					float3 lightDirectionWS = _LightDirection;
				#endif

				float4 positionCS = TransformWorldToHClip(ApplyShadowBias(positionWS, normalWS, lightDirectionWS));

				//code for UNITY_REVERSED_Z is moved into Shadows.hlsl from 6000.0.22 and or higher
				positionCS = ApplyShadowClamping(positionCS);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = positionCS;
				output.clipPosV = positionCS;
				output.positionWS = positionWS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(	PackedVaryings input
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( input );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				float3 WorldPosition = input.positionWS;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				

				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					#ifdef _ALPHATEST_SHADOW_ON
						clip(Alpha - AlphaClipThresholdShadow);
					#else
						clip(Alpha - AlphaClipThreshold);
					#endif
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask 0
			AlphaToMask Off

			HLSLPROGRAM

			#pragma multi_compile _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _EMISSION
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 170003


			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float3 positionWS : TEXCOORD1;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD2;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;
				output.clipPosV = vertexInput.positionCS;
				output.positionWS = vertexInput.positionWS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(	PackedVaryings input
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				float3 WorldPosition = input.positionWS;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				

				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM
			#pragma multi_compile_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _EMISSION
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 170003

			#pragma shader_feature EDITOR_VISUALIZATION

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_META

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_VERT_NORMAL


			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD1;
				#endif
				#ifdef EDITOR_VISUALIZATION
					float4 VizUV : TEXCOORD2;
					float4 LightCoord : TEXCOORD3;
				#endif
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _TextureSample3;
			sampler2D _TextureSample1;
			sampler2D _COATOFARMSMASK;


			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_normalWS = TransformObjectToWorldNormal(input.normalOS);
				output.ase_texcoord5.xyz = ase_normalWS;
				
				output.ase_texcoord4.xy = input.texcoord0.xy;
				output.ase_texcoord4.zw = input.texcoord1.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord5.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;

				float3 positionWS = TransformObjectToWorld( input.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					output.positionWS = positionWS;
				#endif

				output.positionCS = MetaVertexPosition( input.positionOS, input.texcoord1.xy, input.texcoord1.xy, unity_LightmapST, unity_DynamicLightmapST );

				#ifdef EDITOR_VISUALIZATION
					float2 VizUV = 0;
					float4 LightCoord = 0;
					UnityEditorVizData(input.positionOS.xyz, input.texcoord0.xy, input.texcoord1.xy, input.texcoord2.xy, VizUV, LightCoord);
					output.VizUV = float4(VizUV, 0, 0);
					output.LightCoord = LightCoord;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = output.positionCS;
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.texcoord0 = input.texcoord0;
				output.texcoord1 = input.texcoord1;
				output.texcoord2 = input.texcoord2;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.texcoord0 = patch[0].texcoord0 * bary.x + patch[1].texcoord0 * bary.y + patch[2].texcoord0 * bary.z;
				output.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				output.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = input.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 uv_TextureSample3 = input.ase_texcoord4.xy * _TextureSample3_ST.xy + _TextureSample3_ST.zw;
				float4 tex2DNode722 = tex2D( _TextureSample3, uv_TextureSample3 );
				float4 color721 = IsGammaSpace() ? float4(0.4980392,1,1,1) : float4(0.2122307,1,1,1);
				float2 uv_TextureSample1 = input.ase_texcoord4.xy * _TextureSample1_ST.xy + _TextureSample1_ST.zw;
				float4 tex2DNode724 = tex2D( _TextureSample1, uv_TextureSample1 );
				float4 lerpResult729 = lerp( float4( 0,0,0,0 ) , ( tex2DNode722 * _FEATHERS2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color721.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color728 = IsGammaSpace() ? float4(0.4980392,1,0.4980392,1) : float4(0.2122307,1,0.2122307,1);
				float4 lerpResult737 = lerp( lerpResult729 , ( tex2DNode722 * _FEATHERS1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color728.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color732 = IsGammaSpace() ? float4(0,0,1,1) : float4(0,0,1,1);
				float4 lerpResult745 = lerp( lerpResult737 , ( tex2DNode722 * _CLOTH4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color732.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color734 = IsGammaSpace() ? float4(0,1,1,1) : float4(0,1,1,1);
				float4 lerpResult750 = lerp( lerpResult745 , ( tex2DNode722 * _CLOTH3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color734.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color741 = IsGammaSpace() ? float4(0,1,0,1) : float4(0,1,0,1);
				float4 lerpResult754 = lerp( lerpResult750 , ( tex2DNode722 * _CLOTH2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color741.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color748 = IsGammaSpace() ? float4(0,0.4980392,0,1) : float4(0,0.2122307,0,1);
				float4 lerpResult761 = lerp( lerpResult754 , ( tex2DNode722 * _CLOTH1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color748.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color735 = IsGammaSpace() ? float4(1,0.4980392,0.4980392,1) : float4(1,0.2122307,0.2122307,1);
				float4 lerpResult766 = lerp( lerpResult761 , ( tex2DNode722 * _LEATHER4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color735.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color746 = IsGammaSpace() ? float4(1,1,0.4980392,1) : float4(1,1,0.2122307,1);
				float4 lerpResult771 = lerp( lerpResult766 , ( tex2DNode722 * _LEATHER3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color746.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color753 = IsGammaSpace() ? float4(1,0,1,1) : float4(1,0,1,1);
				float4 lerpResult776 = lerp( lerpResult771 , ( tex2DNode722 * _LEATHER2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color753.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color755 = IsGammaSpace() ? float4(1,0.4980392,1,1) : float4(1,0.2122307,1,1);
				float4 lerpResult782 = lerp( lerpResult776 , ( tex2DNode722 * _LEATHER1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color755.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color762 = IsGammaSpace() ? float4(0.4980392,0.4980392,1,1) : float4(0.2122307,0.2122307,1,1);
				float4 lerpResult788 = lerp( lerpResult782 , ( tex2DNode722 * _METAL4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color762.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color769 = IsGammaSpace() ? float4(0,0.4980392,0.4980392,1) : float4(0,0.2122307,0.2122307,1);
				float4 lerpResult794 = lerp( lerpResult788 , ( tex2DNode722 * _METAL3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color769.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color770 = IsGammaSpace() ? float4(0,0,0.4980392,1) : float4(0,0,0.2122307,1);
				float4 lerpResult799 = lerp( lerpResult794 , ( tex2DNode722 * _METAL2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color770.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color778 = IsGammaSpace() ? float4(0.4980392,0,0.4980392,1) : float4(0.2122307,0,0.2122307,1);
				float4 lerpResult803 = lerp( lerpResult799 , ( tex2DNode722 * _METAL1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color778.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color784 = IsGammaSpace() ? float4(1,1,0,1) : float4(1,1,0,1);
				float4 lerpResult807 = lerp( lerpResult803 , ( tex2DNode722 * _OTHERCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color784.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color786 = IsGammaSpace() ? float4(0.4980392,0.4980392,0,1) : float4(0.2122307,0.2122307,0,1);
				float4 lerpResult811 = lerp( lerpResult807 , ( tex2DNode722 * _LIPSCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color786.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color792 = IsGammaSpace() ? float4(0.4980392,0.4980392,0.4980392,1) : float4(0.2122307,0.2122307,0.2122307,1);
				float4 lerpResult815 = lerp( lerpResult811 , ( tex2DNode722 * _SCLERACOLOR1 ) , saturate( ( 1.0 - ( ( distance( color792.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color790 = IsGammaSpace() ? float4(1,0,0,1) : float4(1,0,0,1);
				float4 lerpResult820 = lerp( lerpResult815 , ( tex2DNode722 * _EYESCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color790.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color804 = IsGammaSpace() ? float4(1,0.4980392,0,1) : float4(1,0.2122307,0,1);
				float4 lerpResult821 = lerp( lerpResult820 , ( tex2DNode722 * _HAIRCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color804.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color806 = IsGammaSpace() ? float4(0.4980392,0,0,1) : float4(0.2122307,0,0,1);
				float4 lerpResult823 = lerp( lerpResult821 , ( tex2DNode722 * _SKINCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color806.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float2 uv1_COATOFARMSMASK10 = input.ase_texcoord4.zw;
				float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv1_COATOFARMSMASK10 ).a );
				float4 temp_cast_40 = (temp_output_9_0).xxxx;
				float4 temp_output_1_0_g139 = temp_cast_40;
				float4 color25 = IsGammaSpace() ? float4(0,0,0,0) : float4(0,0,0,0);
				float4 temp_output_2_0_g139 = color25;
				float temp_output_11_0_g139 = distance( temp_output_1_0_g139 , temp_output_2_0_g139 );
				float2 _Vector0 = float2(1.6,1);
				float4 lerpResult21_g139 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g139 , saturate( ( ( temp_output_11_0_g139 - _Vector0.x ) / max( _Vector0.y , 1E-05 ) ) ));
				float4 lerpResult64 = lerp( lerpResult823 , lerpResult21_g139 , ( 1.0 - temp_output_9_0 ));
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 ase_normalWS = input.ase_texcoord5.xyz;
				float fresnelNdotV369 = dot( ase_normalWS, ase_viewDirWS );
				float fresnelNode369 = ( 0.0 + 1.0 * pow( max( 1.0 - fresnelNdotV369 , 0.0001 ), 1.0 ) );
				float4 temp_cast_41 = (step( fresnelNode369 , _CEL1SIZE )).xxxx;
				float4 blendOpSrc689 = temp_cast_41;
				float4 blendOpDest689 = _CEL1COLOR;
				float4 temp_cast_42 = ((0.0 + (_CEL1POWER - 0.0) * (3.0 - 0.0) / (1.0 - 0.0))).xxxx;
				float4 blendOpSrc683 = ( saturate( ( blendOpSrc689 * blendOpDest689 ) ));
				float4 blendOpDest683 = temp_cast_42;
				float4 blendOpSrc661 = ( blendOpSrc683 * blendOpDest683 );
				float4 blendOpDest661 = lerpResult64;
				float fresnelNdotV365 = dot( ase_normalWS, ase_viewDirWS );
				float fresnelNode365 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV365, 1.0 ) );
				float4 temp_cast_43 = (step( fresnelNode365 , _CEL2SIZE )).xxxx;
				float4 blendOpSrc696 = temp_cast_43;
				float4 blendOpDest696 = _CEL2COLOR;
				float4 temp_cast_44 = ((0.0 + (_CEL2POWER - 0.0) * (3.0 - 0.0) / (1.0 - 0.0))).xxxx;
				float4 blendOpSrc686 = ( saturate( ( blendOpSrc696 * blendOpDest696 ) ));
				float4 blendOpDest686 = temp_cast_44;
				float4 blendOpSrc662 = ( blendOpSrc686 * blendOpDest686 );
				float4 blendOpDest662 = lerpResult64;
				float fresnelNdotV368 = dot( ase_normalWS, ase_viewDirWS );
				float fresnelNode368 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV368, 1.0 ) );
				float4 temp_cast_45 = (step( fresnelNode368 , _CEL3SIZE )).xxxx;
				float4 blendOpSrc698 = temp_cast_45;
				float4 blendOpDest698 = _CEL3COLOR;
				float4 temp_cast_46 = ((0.0 + (_CEL3POWER - 0.0) * (3.0 - 0.0) / (1.0 - 0.0))).xxxx;
				float4 blendOpSrc687 = ( saturate( ( blendOpSrc698 * blendOpDest698 ) ));
				float4 blendOpDest687 = temp_cast_46;
				float4 blendOpSrc663 = ( blendOpSrc687 * blendOpDest687 );
				float4 blendOpDest663 = lerpResult64;
				

				float3 BaseColor = float3(0.5, 0.5, 0.5);
				float3 Emission = ( lerpResult64 + ( ( blendOpSrc661 * blendOpDest661 ) + ( saturate( ( blendOpSrc662 * blendOpDest662 ) )) + ( saturate( ( blendOpSrc663 * blendOpDest663 ) )) ) ).rgb;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				MetaInput metaInput = (MetaInput)0;
				metaInput.Albedo = BaseColor;
				metaInput.Emission = Emission;
				#ifdef EDITOR_VISUALIZATION
					metaInput.VizUV = input.VizUV.xy;
					metaInput.LightCoord = input.LightCoord;
				#endif

				return UnityMetaFragment(metaInput);
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Universal2D"
			Tags { "LightMode"="Universal2D" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			HLSLPROGRAM

			#pragma multi_compile_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _EMISSION
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 170003


			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_2D

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD1;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID( input );
				UNITY_TRANSFER_INSTANCE_ID( input, output );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( output );

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					output.positionWS = vertexInput.positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( input );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = input.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				

				float3 BaseColor = float3(0.5, 0.5, 0.5);
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				half4 color = half4(BaseColor, Alpha );

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				return color;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthNormals"
			Tags { "LightMode"="DepthNormals" }

			ZWrite On
			Blend One Zero
			ZTest LEqual
			ZWrite On

			HLSLPROGRAM

			#pragma multi_compile _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _EMISSION
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 170003


			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_DEPTHNORMALSONLY
			//#define SHADERPASS SHADERPASS_DEPTHNORMALS

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float3 positionWS : TEXCOORD1;
				float3 normalWS : TEXCOORD2;
				float4 tangentWS : TEXCOORD3;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD4;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				float3 normalWS = TransformObjectToWorldNormal( input.normalOS );
				float4 tangentWS = float4( TransformObjectToWorldDir( input.tangentOS.xyz ), input.tangentOS.w );

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;
				output.clipPosV = vertexInput.positionCS;
				output.positionWS = vertexInput.positionWS;
				output.normalWS = normalWS;
				output.tangentWS = tangentWS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			void frag(	PackedVaryings input
						, out half4 outNormalWS : SV_Target0
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						#ifdef _WRITE_RENDERING_LAYERS
						, out float4 outRenderingLayers : SV_Target1
						#endif
						 )
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float3 WorldNormal = input.normalWS;
				float4 WorldTangent = input.tangentWS;
				float3 WorldPosition = input.positionWS;
				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				

				float3 Normal = float3(0, 0, 1);
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				#if defined(_GBUFFER_NORMALS_OCT)
					float2 octNormalWS = PackNormalOctQuadEncode(WorldNormal);
					float2 remappedOctNormalWS = saturate(octNormalWS * 0.5 + 0.5);
					half3 packedNormalWS = PackFloat2To888(remappedOctNormalWS);
					outNormalWS = half4(packedNormalWS, 0.0);
				#else
					#if defined(_NORMALMAP)
						#if _NORMAL_DROPOFF_TS
							float crossSign = (WorldTangent.w > 0.0 ? 1.0 : -1.0) * GetOddNegativeScale();
							float3 bitangent = crossSign * cross(WorldNormal.xyz, WorldTangent.xyz);
							float3 normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent.xyz, bitangent, WorldNormal.xyz));
						#elif _NORMAL_DROPOFF_OS
							float3 normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							float3 normalWS = Normal;
						#endif
					#else
						float3 normalWS = WorldNormal;
					#endif
					outNormalWS = half4(NormalizeNormalPerPixel(normalWS), 0.0);
				#endif

				#ifdef _WRITE_RENDERING_LAYERS
					uint renderingLayers = GetMeshRenderingLayer();
					outRenderingLayers = float4(EncodeMeshRenderingLayer(renderingLayers), 0, 0, 0);
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="UniversalGBuffer" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM

			#pragma multi_compile_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma shader_feature_local _RECEIVE_SHADOWS_OFF
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _EMISSION
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 170003


			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
			#pragma multi_compile_fragment _ _SHADOWS_SOFT _SHADOWS_SOFT_LOW _SHADOWS_SOFT_MEDIUM _SHADOWS_SOFT_HIGH
			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile_fragment _ _GBUFFER_NORMALS_OCT
			#pragma multi_compile_fragment _ _RENDER_PASS_ENABLED

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ USE_LEGACY_LIGHTMAPS
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_GBUFFER

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ProbeVolumeVariants.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif
			
			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_NORMAL


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float4 lightmapUVOrVertexSH : TEXCOORD1;
				#if defined(ASE_FOG) || defined(_ADDITIONAL_LIGHTS_VERTEX)
					half4 fogFactorAndVertexLight : TEXCOORD2;
				#endif
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				float4 shadowCoord : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
				float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				#if defined(USE_APV_PROBE_OCCLUSION)
					float4 probeOcclusion : TEXCOORD8;
				#endif
				float4 ase_texcoord9 : TEXCOORD9;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _TextureSample3;
			sampler2D _TextureSample1;
			sampler2D _COATOFARMSMASK;


			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/UnityGBuffer.hlsl"

			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				output.ase_texcoord9.xy = input.texcoord.xy;
				output.ase_texcoord9.zw = input.texcoord1.xy;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( input.normalOS, input.tangentOS );

				output.tSpace0 = float4( normalInput.normalWS, vertexInput.positionWS.x);
				output.tSpace1 = float4( normalInput.tangentWS, vertexInput.positionWS.y);
				output.tSpace2 = float4( normalInput.bitangentWS, vertexInput.positionWS.z);

				#if defined(LIGHTMAP_ON)
					OUTPUT_LIGHTMAP_UV(input.texcoord1, unity_LightmapST, output.lightmapUVOrVertexSH.xy);
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					output.dynamicLightmapUV.xy = input.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				OUTPUT_SH4( vertexInput.positionWS, normalInput.normalWS.xyz, GetWorldSpaceNormalizeViewDir( vertexInput.positionWS ), output.lightmapUVOrVertexSH.xyz, output.probeOcclusion );

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					output.lightmapUVOrVertexSH.zw = input.texcoord.xy;
					output.lightmapUVOrVertexSH.xy = input.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				#if defined(ASE_FOG) || defined(_ADDITIONAL_LIGHTS_VERTEX)
					output.fogFactorAndVertexLight = 0;
					#if defined(ASE_FOG) && !defined(_FOG_FRAGMENT)
						// @diogo: no fog applied in GBuffer
					#endif
					#ifdef _ADDITIONAL_LIGHTS_VERTEX
						half3 vertexLight = VertexLighting( vertexInput.positionWS, normalInput.normalWS );
						output.fogFactorAndVertexLight.yzw = vertexLight;
					#endif
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;
				output.clipPosV = vertexInput.positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				output.texcoord = input.texcoord;
				output.texcoord1 = input.texcoord1;
				output.texcoord2 = input.texcoord2;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				output.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				output.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				output.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			FragmentOutput frag ( PackedVaryings input
								#ifdef ASE_DEPTH_WRITE_ON
								,out float outputDepth : ASE_SV_DEPTH
								#endif
								 )
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input);

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (input.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( input.tSpace0.xyz );
					float3 WorldTangent = input.tSpace1.xyz;
					float3 WorldBiTangent = input.tSpace2.xyz;
				#endif

				float3 WorldPosition = float3(input.tSpace0.w,input.tSpace1.w,input.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				float2 NormalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(input.positionCS);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = input.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#else
					ShadowCoords = float4(0, 0, 0, 0);
				#endif

				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float2 uv_TextureSample3 = input.ase_texcoord9.xy * _TextureSample3_ST.xy + _TextureSample3_ST.zw;
				float4 tex2DNode722 = tex2D( _TextureSample3, uv_TextureSample3 );
				float4 color721 = IsGammaSpace() ? float4(0.4980392,1,1,1) : float4(0.2122307,1,1,1);
				float2 uv_TextureSample1 = input.ase_texcoord9.xy * _TextureSample1_ST.xy + _TextureSample1_ST.zw;
				float4 tex2DNode724 = tex2D( _TextureSample1, uv_TextureSample1 );
				float4 lerpResult729 = lerp( float4( 0,0,0,0 ) , ( tex2DNode722 * _FEATHERS2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color721.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color728 = IsGammaSpace() ? float4(0.4980392,1,0.4980392,1) : float4(0.2122307,1,0.2122307,1);
				float4 lerpResult737 = lerp( lerpResult729 , ( tex2DNode722 * _FEATHERS1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color728.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color732 = IsGammaSpace() ? float4(0,0,1,1) : float4(0,0,1,1);
				float4 lerpResult745 = lerp( lerpResult737 , ( tex2DNode722 * _CLOTH4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color732.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color734 = IsGammaSpace() ? float4(0,1,1,1) : float4(0,1,1,1);
				float4 lerpResult750 = lerp( lerpResult745 , ( tex2DNode722 * _CLOTH3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color734.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color741 = IsGammaSpace() ? float4(0,1,0,1) : float4(0,1,0,1);
				float4 lerpResult754 = lerp( lerpResult750 , ( tex2DNode722 * _CLOTH2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color741.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color748 = IsGammaSpace() ? float4(0,0.4980392,0,1) : float4(0,0.2122307,0,1);
				float4 lerpResult761 = lerp( lerpResult754 , ( tex2DNode722 * _CLOTH1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color748.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color735 = IsGammaSpace() ? float4(1,0.4980392,0.4980392,1) : float4(1,0.2122307,0.2122307,1);
				float4 lerpResult766 = lerp( lerpResult761 , ( tex2DNode722 * _LEATHER4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color735.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color746 = IsGammaSpace() ? float4(1,1,0.4980392,1) : float4(1,1,0.2122307,1);
				float4 lerpResult771 = lerp( lerpResult766 , ( tex2DNode722 * _LEATHER3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color746.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color753 = IsGammaSpace() ? float4(1,0,1,1) : float4(1,0,1,1);
				float4 lerpResult776 = lerp( lerpResult771 , ( tex2DNode722 * _LEATHER2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color753.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color755 = IsGammaSpace() ? float4(1,0.4980392,1,1) : float4(1,0.2122307,1,1);
				float4 lerpResult782 = lerp( lerpResult776 , ( tex2DNode722 * _LEATHER1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color755.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color762 = IsGammaSpace() ? float4(0.4980392,0.4980392,1,1) : float4(0.2122307,0.2122307,1,1);
				float4 lerpResult788 = lerp( lerpResult782 , ( tex2DNode722 * _METAL4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color762.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color769 = IsGammaSpace() ? float4(0,0.4980392,0.4980392,1) : float4(0,0.2122307,0.2122307,1);
				float4 lerpResult794 = lerp( lerpResult788 , ( tex2DNode722 * _METAL3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color769.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color770 = IsGammaSpace() ? float4(0,0,0.4980392,1) : float4(0,0,0.2122307,1);
				float4 lerpResult799 = lerp( lerpResult794 , ( tex2DNode722 * _METAL2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color770.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color778 = IsGammaSpace() ? float4(0.4980392,0,0.4980392,1) : float4(0.2122307,0,0.2122307,1);
				float4 lerpResult803 = lerp( lerpResult799 , ( tex2DNode722 * _METAL1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color778.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color784 = IsGammaSpace() ? float4(1,1,0,1) : float4(1,1,0,1);
				float4 lerpResult807 = lerp( lerpResult803 , ( tex2DNode722 * _OTHERCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color784.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color786 = IsGammaSpace() ? float4(0.4980392,0.4980392,0,1) : float4(0.2122307,0.2122307,0,1);
				float4 lerpResult811 = lerp( lerpResult807 , ( tex2DNode722 * _LIPSCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color786.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color792 = IsGammaSpace() ? float4(0.4980392,0.4980392,0.4980392,1) : float4(0.2122307,0.2122307,0.2122307,1);
				float4 lerpResult815 = lerp( lerpResult811 , ( tex2DNode722 * _SCLERACOLOR1 ) , saturate( ( 1.0 - ( ( distance( color792.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color790 = IsGammaSpace() ? float4(1,0,0,1) : float4(1,0,0,1);
				float4 lerpResult820 = lerp( lerpResult815 , ( tex2DNode722 * _EYESCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color790.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color804 = IsGammaSpace() ? float4(1,0.4980392,0,1) : float4(1,0.2122307,0,1);
				float4 lerpResult821 = lerp( lerpResult820 , ( tex2DNode722 * _HAIRCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color804.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float4 color806 = IsGammaSpace() ? float4(0.4980392,0,0,1) : float4(0.2122307,0,0,1);
				float4 lerpResult823 = lerp( lerpResult821 , ( tex2DNode722 * _SKINCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color806.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float2 uv1_COATOFARMSMASK10 = input.ase_texcoord9.zw;
				float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv1_COATOFARMSMASK10 ).a );
				float4 temp_cast_40 = (temp_output_9_0).xxxx;
				float4 temp_output_1_0_g139 = temp_cast_40;
				float4 color25 = IsGammaSpace() ? float4(0,0,0,0) : float4(0,0,0,0);
				float4 temp_output_2_0_g139 = color25;
				float temp_output_11_0_g139 = distance( temp_output_1_0_g139 , temp_output_2_0_g139 );
				float2 _Vector0 = float2(1.6,1);
				float4 lerpResult21_g139 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g139 , saturate( ( ( temp_output_11_0_g139 - _Vector0.x ) / max( _Vector0.y , 1E-05 ) ) ));
				float4 lerpResult64 = lerp( lerpResult823 , lerpResult21_g139 , ( 1.0 - temp_output_9_0 ));
				float3 ase_viewDirWS = normalize( WorldViewDirection );
				float fresnelNdotV369 = dot( WorldNormal, ase_viewDirWS );
				float fresnelNode369 = ( 0.0 + 1.0 * pow( max( 1.0 - fresnelNdotV369 , 0.0001 ), 1.0 ) );
				float4 temp_cast_41 = (step( fresnelNode369 , _CEL1SIZE )).xxxx;
				float4 blendOpSrc689 = temp_cast_41;
				float4 blendOpDest689 = _CEL1COLOR;
				float4 temp_cast_42 = ((0.0 + (_CEL1POWER - 0.0) * (3.0 - 0.0) / (1.0 - 0.0))).xxxx;
				float4 blendOpSrc683 = ( saturate( ( blendOpSrc689 * blendOpDest689 ) ));
				float4 blendOpDest683 = temp_cast_42;
				float4 blendOpSrc661 = ( blendOpSrc683 * blendOpDest683 );
				float4 blendOpDest661 = lerpResult64;
				float fresnelNdotV365 = dot( WorldNormal, ase_viewDirWS );
				float fresnelNode365 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV365, 1.0 ) );
				float4 temp_cast_43 = (step( fresnelNode365 , _CEL2SIZE )).xxxx;
				float4 blendOpSrc696 = temp_cast_43;
				float4 blendOpDest696 = _CEL2COLOR;
				float4 temp_cast_44 = ((0.0 + (_CEL2POWER - 0.0) * (3.0 - 0.0) / (1.0 - 0.0))).xxxx;
				float4 blendOpSrc686 = ( saturate( ( blendOpSrc696 * blendOpDest696 ) ));
				float4 blendOpDest686 = temp_cast_44;
				float4 blendOpSrc662 = ( blendOpSrc686 * blendOpDest686 );
				float4 blendOpDest662 = lerpResult64;
				float fresnelNdotV368 = dot( WorldNormal, ase_viewDirWS );
				float fresnelNode368 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV368, 1.0 ) );
				float4 temp_cast_45 = (step( fresnelNode368 , _CEL3SIZE )).xxxx;
				float4 blendOpSrc698 = temp_cast_45;
				float4 blendOpDest698 = _CEL3COLOR;
				float4 temp_cast_46 = ((0.0 + (_CEL3POWER - 0.0) * (3.0 - 0.0) / (1.0 - 0.0))).xxxx;
				float4 blendOpSrc687 = ( saturate( ( blendOpSrc698 * blendOpDest698 ) ));
				float4 blendOpDest687 = temp_cast_46;
				float4 blendOpSrc663 = ( blendOpSrc687 * blendOpDest687 );
				float4 blendOpDest663 = lerpResult64;
				

				float3 BaseColor = float3(0.5, 0.5, 0.5);
				float3 Normal = float3(0, 0, 1);
				float3 Emission = ( lerpResult64 + ( ( blendOpSrc661 * blendOpDest661 ) + ( saturate( ( blendOpSrc662 * blendOpDest662 ) )) + ( saturate( ( blendOpSrc663 * blendOpDest663 ) )) ) ).rgb;
				float3 Specular = 0.5;
				float Metallic = 0;
				float Smoothness = 0.5;
				float Occlusion = 1;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.positionCS = input.positionCS;
				inputData.shadowCoord = ShadowCoords;

				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
						inputData.normalWS = TransformTangentToWorld(Normal, half3x3( WorldTangent, WorldBiTangent, WorldNormal ));
					#elif _NORMAL_DROPOFF_OS
						inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
						inputData.normalWS = Normal;
					#endif
				#else
					inputData.normalWS = WorldNormal;
				#endif

				inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				inputData.viewDirectionWS = SafeNormalize( WorldViewDirection );

				#ifdef ASE_FOG
					// @diogo: no fog applied in GBuffer
				#endif
				#ifdef _ADDITIONAL_LIGHTS_VERTEX
					inputData.vertexLighting = input.fogFactorAndVertexLight.yzw;
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = input.lightmapUVOrVertexSH.xyz;
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					inputData.bakedGI = SAMPLE_GI(input.lightmapUVOrVertexSH.xy, input.dynamicLightmapUV.xy, SH, inputData.normalWS);
					inputData.shadowMask = SAMPLE_SHADOWMASK(input.lightmapUVOrVertexSH.xy);
				#elif !defined(LIGHTMAP_ON) && (defined(PROBE_VOLUMES_L1) || defined(PROBE_VOLUMES_L2))
					inputData.bakedGI = SAMPLE_GI( SH, GetAbsolutePositionWS(inputData.positionWS),
						inputData.normalWS,
						inputData.viewDirectionWS,
						input.positionCS.xy,
						input.probeOcclusion,
						inputData.shadowMask );
				#else
					inputData.bakedGI = SAMPLE_GI(input.lightmapUVOrVertexSH.xy, SH, inputData.normalWS);
					inputData.shadowMask = SAMPLE_SHADOWMASK(input.lightmapUVOrVertexSH.xy);
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif

				inputData.normalizedScreenSpaceUV = NormalizedScreenSpaceUV;

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = input.dynamicLightmapUV.xy;
						#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = input.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
					#if defined(USE_APV_PROBE_OCCLUSION)
						inputData.probeOcclusion = input.probeOcclusion;
					#endif
				#endif

				#ifdef _DBUFFER
					ApplyDecal(input.positionCS,
						BaseColor,
						Specular,
						inputData.normalWS,
						Metallic,
						Occlusion,
						Smoothness);
				#endif

				BRDFData brdfData;
				InitializeBRDFData
				(BaseColor, Metallic, Specular, Smoothness, Alpha, brdfData);

				Light mainLight = GetMainLight(inputData.shadowCoord, inputData.positionWS, inputData.shadowMask);
				half4 color;
				MixRealtimeAndBakedGI(mainLight, inputData.normalWS, inputData.bakedGI, inputData.shadowMask);
				color.rgb = GlobalIllumination(brdfData, inputData.bakedGI, Occlusion, inputData.positionWS, inputData.normalWS, inputData.viewDirectionWS);
				color.a = Alpha;

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return BRDFDataToGbuffer(brdfData, inputData, Smoothness, Emission + color.rgb, Occlusion);
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }

			Cull Off
			AlphaToMask Off

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _EMISSION
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 170003


			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SCENESELECTIONPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			PackedVaryings VertexFunction(Attributes input  )
			{
				PackedVaryings output;
				ZERO_INITIALIZE(PackedVaryings, output);

				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;

				float3 positionWS = TransformObjectToWorld( input.positionOS.xyz );

				output.positionCS = TransformWorldToHClip(positionWS);

				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input ) : SV_Target
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				

				surfaceDescription.Alpha = 1;
				surfaceDescription.AlphaClipThreshold = 0.5;

				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
					clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;

				#ifdef SCENESELECTIONPASS
					outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
					outColor = _SelectionID;
				#endif

				return outColor;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ScenePickingPass"
			Tags { "LightMode"="Picking" }

			AlphaToMask Off

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _EMISSION
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 170003


			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

		    #define SCENEPICKINGPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			PackedVaryings VertexFunction(Attributes input  )
			{
				PackedVaryings output;
				ZERO_INITIALIZE(PackedVaryings, output);

				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;

				float3 positionWS = TransformObjectToWorld( input.positionOS.xyz );
				output.positionCS = TransformWorldToHClip(positionWS);

				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input ) : SV_Target
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				

				surfaceDescription.Alpha = 1;
				surfaceDescription.AlphaClipThreshold = 0.5;

				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
						clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;

				#ifdef SCENESELECTIONPASS
					outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
					outColor = _SelectionID;
				#endif

				return outColor;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "MotionVectors"
			Tags { "LightMode"="MotionVectors" }

			ColorMask RG

			HLSLPROGRAM

			#pragma multi_compile _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _EMISSION
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 170003


			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif
	
            #define SHADERPASS SHADERPASS_MOTION_VECTORS

            #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
		    #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
		    #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
		    #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
				#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
			#endif

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MotionVectorsCommon.hlsl"

			

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 positionOld : TEXCOORD4;
				#if _ADD_PRECOMPUTED_VELOCITY
					float3 alembicMotionVector : TEXCOORD5;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				float4 positionCSNoJitter : TEXCOORD0;
				float4 previousPositionCSNoJitter : TEXCOORD1;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				#if defined(APLICATION_SPACE_WARP_MOTION)
					// We do not need jittered position in ASW
					output.positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, input.positionOS));;
					output.positionCS = output.positionCSNoJitter;
				#else
					// Jittered. Match the frame.
					output.positionCS = vertexInput.positionCS;
					output.positionCSNoJitter = mul( _NonJitteredViewProjMatrix, mul( UNITY_MATRIX_M, input.positionOS));
				#endif

				float4 prevPos = ( unity_MotionVectorsParams.x == 1 ) ? float4( input.positionOld, 1 ) : input.positionOS;

				#if _ADD_PRECOMPUTED_VELOCITY
					prevPos = prevPos - float4(input.alembicMotionVector, 0);
				#endif

				output.previousPositionCSNoJitter = mul( _PrevViewProjMatrix, mul( UNITY_PREV_MATRIX_M, prevPos ) );
				// removed in ObjectMotionVectors.hlsl found in unity 6000.0.23 and higher
				//ApplyMotionVectorZBias( output.positionCS );
				return output;
			}

			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}

			half4 frag(	PackedVaryings input  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				

				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined(APLICATION_SPACE_WARP_MOTION)
					return float4( CalcAswNdcMotionVectorFromCsPositions( input.positionCSNoJitter, input.previousPositionCSNoJitter ), 1 );
				#else
					return float4( CalcNdcMotionVectorFromCsPositions( input.positionCSNoJitter, input.previousPositionCSNoJitter ), 0, 0 );
				#endif
			}		
			ENDHLSL
		}
		
	}
	
	CustomEditor "UnityEditor.ShaderGraphLitGUI"
	FallBack "Hidden/Shader Graph/FallbackError"
	
	Fallback "Hidden/InternalErrorShader"
}
/*ASEBEGIN
Version=19800
Node;AmplifyShaderEditor.CommentaryNode;714;-15992.46,563.8831;Inherit;False;439.4697;254.3918;Comment;1;724;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;713;-16030.87,83.65945;Inherit;False;483.4482;271.3363;Comment;1;722;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;720;-15283.12,84.74319;Inherit;False;1271.642;720.5787;Comment;10;737;733;730;729;728;727;726;725;723;721;FEATHERS COLORS;0.735849,0.7152051,0.3158597,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;715;-13927.46,82.72341;Inherit;False;2359.399;774.7212;Comment;19;761;758;756;754;752;751;750;749;748;745;744;742;741;740;739;738;736;734;731;CLOTH COLORS;0.4690726,0.7830189,0.47128,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;716;-11420.16,62.59231;Inherit;False;2539.317;705.8575;Comment;20;782;779;776;773;772;771;768;767;766;764;763;760;759;757;755;753;747;746;743;735;LEATHER COLORS;0.7735849,0.5371538,0.1788003,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;717;-8576.588,59.73391;Inherit;False;2541.828;775.4952;Comment;20;803;799;796;794;793;791;788;787;785;783;781;780;778;777;775;774;770;769;765;762;METAL COLORS;0.259434,0.8569208,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;718;-5429.199,76.74099;Inherit;False;1932.122;803.2549;Comment;15;815;814;811;810;808;807;802;801;798;797;795;792;789;786;784;LIPS - SCARS - SCLERA COLORS;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;24;-1812.858,-1400.5;Inherit;False;1262.249;589.4722;;10;16;18;26;25;17;9;10;290;293;294;COAT OF ARMS;1,0,0.7651567,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;719;-3292.328,102.2051;Inherit;False;2291.459;750.2154;Comment;15;823;822;821;820;819;818;817;816;813;812;809;806;804;800;790;SKIN - HAIR - EYES COLORS;1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;360;-2384.559,956.9141;Inherit;False;2541.61;1272.682;Comment;32;379;662;663;661;686;559;560;390;683;687;688;684;685;374;371;370;369;367;368;365;364;366;362;361;363;689;690;695;697;699;700;701;TOON;0.990566,0.1822268,0.8019541,1;0;0
Node;AmplifyShaderEditor.ColorNode;721;-15217.29,631.9681;Inherit;False;Constant;_Color28;Color 27;53;0;Create;True;0;0;0;False;0;False;0.4980392,1,1,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;722;-15932.07,128.9046;Inherit;True;Property;_TextureSample3;Texture Sample 2;32;1;[HideInInspector];Create;True;0;0;0;False;0;False;-1;f7390e40451b1494fbe67eb39e53d4ec;f7390e40451b1494fbe67eb39e53d4ec;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;723;-15207.44,146.0448;Inherit;False;Property;_FEATHERS2COLOR1;FEATHERS 2 COLOR;30;1;[HDR];Create;True;0;0;0;False;0;False;0.6792453,0,0,0;0.6792453,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;724;-15918.78,599.306;Inherit;True;Property;_TextureSample1;Texture Sample 0;31;1;[HideInInspector];Create;True;0;0;0;False;0;False;-1;6bb85a5d9f66498428d452f1d30c189c;6bb85a5d9f66498428d452f1d30c189c;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;725;-14973.4,612.2277;Inherit;True;Color Mask;-1;;112;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;726;-14662.44,142.0448;Inherit;False;Property;_FEATHERS1COLOR1;FEATHERS 1 COLOR;29;1;[HDR];Create;True;0;0;0;False;0;False;0.7735849,0.492613,0.492613,0;0.7735849,0.492613,0.492613,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;727;-14943.84,127.6043;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;728;-14679.29,624.9681;Inherit;False;Constant;_Color27;Color 26;53;0;Create;True;0;0;0;False;0;False;0.4980392,1,0.4980392,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;732;-13927.79,652.941;Inherit;False;Constant;_Color26;Color 25;53;0;Create;True;0;0;0;False;0;False;0,0,1,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;730;-14367.03,132.6664;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;733;-14440.32,610.5724;Inherit;True;Color Mask;-1;;113;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;729;-14760.43,331.0778;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;731;-13887.35,177.7767;Inherit;False;Property;_CLOTH4COLOR1;CLOTH 4 COLOR;28;1;[HDR];Create;True;0;0;0;False;0;False;0.2011392,0.3773585,0.3739074,0;0.9056604,0.6815338,0.4229263,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;734;-13371.38,631.2274;Inherit;False;Constant;_Color25;Color 24;53;0;Create;True;0;0;0;False;0;False;0,1,1,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;736;-13606.99,152.3287;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;737;-14183.66,340.3929;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;738;-13651.44,616.4454;Inherit;True;Color Mask;-1;;114;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;739;-13415.9,150.2664;Inherit;False;Property;_CLOTH3COLOR1;CLOTH 3 COLOR;27;1;[HDR];Create;True;0;0;0;False;0;False;0.3962264,0.3391397,0.2710039,0;0.9056604,0.6815338,0.4229263,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;742;-12797.08,158.3336;Inherit;False;Property;_CLOTH2COLOR1;CLOTH 2 COLOR;26;1;[HDR];Create;True;0;0;0;False;0;False;1,0,0,0;1,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;741;-12766.9,635.0768;Inherit;False;Constant;_Color24;Color 23;53;0;Create;True;0;0;0;False;0;False;0,1,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;745;-13436.17,379.7128;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;740;-13145.61,615.8624;Inherit;True;Color Mask;-1;;115;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;744;-13125.1,132.7235;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;752;-12512.24,135.1024;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;751;-12203.1,157.1312;Inherit;False;Property;_CLOTH1COLOR1;CLOTH 1 COLOR;25;1;[HDR];Create;True;0;0;0;False;0;False;0,0.1792453,0.05062231,0;0,0.1142961,0.1698113,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;750;-12949.28,353.1078;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;748;-12240.9,637.0768;Inherit;False;Constant;_Color23;Color 22;53;0;Create;True;0;0;0;False;0;False;0,0.4980392,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;749;-12537.79,617.9735;Inherit;True;Color Mask;-1;;124;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;758;-11969.11,618.0704;Inherit;True;Color Mask;-1;;126;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;756;-11935.42,140.1644;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;754;-12328.83,338.5758;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;735;-11311.61,649.3312;Inherit;False;Constant;_Color22;Color 21;53;0;Create;True;0;0;0;False;0;False;1,0.4980392,0.4980392,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;757;-11279.49,140.4166;Inherit;False;Property;_LEATHER4COLOR1;LEATHER 4 COLOR;24;1;[HDR];Create;True;0;0;0;False;0;False;0.1698113,0.04637412,0.02963688,1;0.1698113,0.04637412,0.02963688,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;763;-10709.72,147.6256;Inherit;False;Property;_LEATHER3COLOR1;LEATHER 3 COLOR;23;1;[HDR];Create;True;0;0;0;False;0;False;0.1698113,0.04637412,0.02963688,1;0.1698113,0.04637412,0.02963688,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;743;-11040.97,621.3073;Inherit;True;Color Mask;-1;;127;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;761;-11752.06,347.891;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;746;-10726.61,642.3312;Inherit;False;Constant;_Color21;Color 20;53;0;Create;True;0;0;0;False;0;False;1,1,0.4980392,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;764;-11012.91,115.8241;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;747;-10460.7,623.1163;Inherit;True;Color Mask;-1;;128;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;753;-10071.61,641.3312;Inherit;False;Constant;_Color20;Color 19;53;0;Create;True;0;0;0;False;0;False;1,0,1,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;768;-10118.34,150.9977;Inherit;False;Property;_LEATHER2COLOR1;LEATHER 2 COLOR;22;1;[HDR];Create;True;0;0;0;False;0;False;0.4245283,0.190437,0.09011215,1;0.4245283,0.190437,0.09011215,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;766;-10842.84,355.9518;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;767;-10443.14,123.0333;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;771;-10262.07,338.161;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;759;-9804.076,626.6273;Inherit;True;Color Mask;-1;;129;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;773;-9825.023,120.1558;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;772;-9528.34,143.9977;Inherit;False;Property;_LEATHER1COLOR1;LEATHER 1 COLOR;21;1;[HDR];Create;True;0;0;0;False;0;False;0.4811321,0.2041155,0.08851016,1;0.4811321,0.2041155,0.08851016,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;755;-9547.609,642.3312;Inherit;False;Constant;_Color19;Color 18;53;0;Create;True;0;0;0;False;0;False;1,0.4980392,1,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;760;-9306.664,628.1376;Inherit;True;Color Mask;-1;;130;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;779;-9248.209,125.2181;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;762;-8394.195,597.5253;Inherit;False;Constant;_Color18;Color 17;53;0;Create;True;0;0;0;False;0;False;0.4980392,0.4980392,1,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;776;-9641.617,335.8553;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;777;-8372.627,128.2391;Inherit;False;Property;_METAL4COLOR1;METAL 4 COLOR;20;1;[HDR];Create;True;0;0;0;False;0;False;0.4383232,0.4383232,0.4716981,0;0.9528302,0.9528302,0.9528302,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;783;-7860.932,128.5431;Inherit;False;Property;_METAL3COLOR1;METAL 3 COLOR;19;1;[HDR];Create;True;0;0;0;False;0;False;0.4383232,0.4383232,0.4716981,0;0.9528302,0.9528302,0.9528302,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;782;-9064.844,332.9442;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;765;-8123.002,582.6984;Inherit;True;Color Mask;-1;;131;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;781;-8071.521,119.1009;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;769;-7832.06,610.1915;Inherit;False;Constant;_Color17;Color 16;53;0;Create;True;0;0;0;False;0;False;0,0.4980392,0.4980392,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;770;-7216.364,613.3094;Inherit;False;Constant;_Color16;Color 15;53;0;Create;True;0;0;0;False;0;False;0,0,0.4980392,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;787;-7550.363,109.9341;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;788;-7895.707,339.4852;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;774;-7576.477,583.6781;Inherit;True;Color Mask;-1;;132;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;785;-7197.117,114.9959;Inherit;False;Property;_METAL2COLOR1;METAL 2 COLOR;18;1;[HDR];Create;True;0;0;0;False;0;False;0.4674706,0.4677705,0.5188679,0;0.3301887,0.3301887,0.3301887,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;793;-6629.755,84.15578;Inherit;False;Property;_METAL1COLOR1;METAL 1 COLOR;17;1;[HDR];Create;True;0;0;0;False;0;False;0.8792791,0.9922886,1.007606,0;2,0.682353,0.1960784,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;791;-6937.502,112.3133;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;778;-6721.364,612.3094;Inherit;False;Constant;_Color15;Color 14;53;0;Create;True;0;0;0;False;0;False;0.4980392,0,0.4980392,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;794;-7374.548,330.3185;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;775;-6975.905,589.6952;Inherit;True;Color Mask;-1;;133;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;799;-6754.095,315.7865;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;796;-6360.688,117.3753;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;798;-5296.699,144.348;Inherit;False;Property;_OTHERCOLOR1;OTHER COLOR;15;1;[HDR];Create;True;0;0;0;False;0;False;0.5188679,0.4637216,0.3206212,0;0.8490566,0.5037117,0.3884835,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;784;-5313.053,610.7535;Inherit;False;Constant;_Color14;Color 13;53;0;Create;True;0;0;0;False;0;False;1,1,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;780;-6464.14,593.1395;Inherit;True;Color Mask;-1;;134;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;801;-5018.789,142.1561;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;789;-5080.262,601.6461;Inherit;True;Color Mask;-1;;135;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;802;-4655.907,91.4075;Inherit;False;Property;_LIPSCOLOR1;LIPS COLOR;13;1;[HDR];Create;True;0;0;0;False;0;False;0.8301887,0.3185886,0.2780349,0;0.8301887,0.3185886,0.2780349,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;803;-6177.323,325.1014;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;786;-4799.532,610.7535;Inherit;False;Constant;_Color13;Color 12;53;0;Create;True;0;0;0;False;0;False;0.4980392,0.4980392,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;10;-1769.44,-1325.746;Inherit;True;Property;_COATOFARMSMASK;COAT OF ARMS MASK;2;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;792;-4228.064,637.2845;Inherit;False;Constant;_Color12;Color 11;53;0;Create;True;0;0;0;False;0;False;0.4980392,0.4980392,0.4980392,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;807;-4847.907,299.4076;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;808;-4383.907,123.4076;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;795;-4541.546,591.6554;Inherit;True;Color Mask;-1;;136;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;810;-4079.907,107.4075;Inherit;False;Property;_SCLERACOLOR1;SCLERA COLOR;10;1;[HDR];Create;True;0;0;0;False;0;False;0.9056604,0.8159487,0.8159487,0;0.9056604,0.8159487,0.8159487,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;811;-4239.907,299.4076;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;812;-2826.188,157.8355;Inherit;False;Property;_EYESCOLOR1;EYES COLOR;4;1;[HDR];Create;True;0;0;0;False;0;False;0.0734529,0.1320755,0.05046281,1;0.0734529,0.1320755,0.05046281,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;814;-3807.906,123.4076;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;797;-3918.423,624.0341;Inherit;True;Color Mask;-1;;137;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;790;-2969.373,587.4012;Inherit;False;Constant;_Color9;Color 8;53;0;Create;True;0;0;0;False;0;False;1,0,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.OneMinusNode;9;-1435.856,-1221.265;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;815;-3663.905,299.4076;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;26;-1063.837,-1185.19;Inherit;False;Property;_COATOFARMSCOLOR;COAT OF ARMS COLOR;1;1;[HDR];Create;True;0;0;0;False;0;False;1,0,0,0;1,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;817;-2488.186,135.877;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector2Node;18;-1043.557,-1002.802;Inherit;False;Constant;_Vector0;Vector 0;1;0;Create;True;0;0;0;False;0;False;1.6,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.FunctionNode;800;-2677.48,569.6414;Inherit;True;Color Mask;-1;;138;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;804;-2294.182,594.7792;Inherit;False;Constant;_Color10;Color 9;53;0;Create;True;0;0;0;False;0;False;1,0.4980392,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;25;-1067.646,-1364.901;Inherit;False;Constant;_Color4;Color 4;1;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;816;-2187.755,151.8919;Inherit;False;Property;_HAIRCOLOR1;HAIR COLOR;7;1;[HDR];Create;True;0;0;0;False;0;False;1,0,0,0;0.2735849,0.213428,0.1432449,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.OneMinusNode;16;-1249.699,-965.4095;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;294;-644.1989,-930.3562;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;806;-1685.014,598.4681;Inherit;False;Constant;_Color11;Color 10;53;0;Create;True;0;0;0;False;0;False;0.4980392,0,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;17;-814.7589,-1227.691;Inherit;False;Replace Color;-1;;139;896dccb3016c847439def376a728b869;1,12,0;5;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;818;-1631.842,144.4456;Inherit;False;Property;_SKINCOLOR1;SKIN COLOR;0;1;[HDR];Create;True;0;0;0;False;0;False;2.02193,1.0081,0.6199315,0;2.02193,1.0081,0.6199315,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;819;-1834.258,138.4847;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;820;-2331.755,311.8919;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;809;-2043.755,579.5519;Inherit;True;Color Mask;-1;;140;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;363;-2264.815,1559.836;Inherit;False;Constant;_Float3;Float 3;31;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;361;-2262.561,1359.56;Inherit;False;Constant;_1;1;32;0;Create;True;0;0;0;False;0;False;1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;822;-1355.756,135.8919;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;293;-633.4137,-898.618;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;362;-2290.99,1147.003;Inherit;False;Constant;_2;2;35;0;Create;True;0;0;0;False;0;False;1;0.3991557;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;813;-1428.671,581.6993;Inherit;True;Color Mask;-1;;141;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;821;-1736.424,317.5475;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;290;-633.3123,-1147.438;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FresnelNode;369;-1956.678,1036.234;Inherit;False;Standard;WorldNormal;ViewDir;True;True;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;367;-1763.215,1206.693;Inherit;False;Property;_CEL1SIZE;CEL 1 SIZE;3;0;Create;True;0;0;0;False;0;False;0.1;0.45;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;366;-1764.589,1647.723;Inherit;False;Property;_CEL3SIZE;CEL 3 SIZE;6;0;Create;True;0;0;0;False;0;False;0.8;0.706;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;364;-1744.519,1402.56;Inherit;False;Property;_CEL2SIZE;CEL 2 SIZE;5;0;Create;True;0;0;0;False;0;False;0.4;0.243;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;291;-617.0846,363.4227;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FresnelNode;365;-1958.192,1272.703;Inherit;False;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;292;-620.0846,401.4227;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;368;-1997.462,1519.467;Inherit;False;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;823;-1147.756,311.8919;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;64;-588.6503,335.5556;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.StepOpNode;370;-1455.669,1593.09;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;695;-1338.313,1422.022;Inherit;False;Property;_CEL2COLOR;CEL 2 COLOR;14;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode;688;-1102.397,1725.987;Inherit;False;Property;_CEL3POWER;CEL 3 POWER;11;0;Create;True;0;0;0;False;0;False;0.15;0.247;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StepOpNode;374;-1422.798,1338.325;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;697;-1341.959,1671.755;Inherit;False;Property;_CEL3COLOR;CEL 3 COLOR;16;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.StepOpNode;371;-1481.249,1063.553;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;690;-1382.336,1176.092;Inherit;False;Property;_CEL1COLOR;CEL 1 COLOR;12;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode;685;-1116.953,1474.047;Inherit;False;Property;_CEL2POWER;CEL 2 POWER;9;0;Create;True;0;0;0;False;0;False;0.15;0.206;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;684;-1152.591,1217.51;Inherit;False;Property;_CEL1POWER;CEL 1 POWER;8;0;Create;True;0;0;0;False;0;False;0.15;0.22;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;699;-868.8555,1208.175;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;395;-405.1466,381.3712;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;394;-405.1466,380.3712;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TFHCRemapNode;700;-848.9835,1463.261;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;396;-404.1466,380.3712;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TFHCRemapNode;701;-822.0625,1730.397;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;698;-1118.693,1581.753;Inherit;False;Multiply;True;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;696;-1115.047,1332.02;Inherit;False;Multiply;True;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;689;-1114.33,1075.988;Inherit;False;Multiply;True;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;560;-404.1298,1339.633;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;686;-704.9259,1334.608;Inherit;False;Multiply;False;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;687;-694.37,1584.548;Inherit;False;Multiply;False;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;390;-409.3758,1069.185;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;683;-760.7569,1072.747;Inherit;False;Multiply;False;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;559;-412.1298,1549.633;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;663;-359.8096,1571.366;Inherit;False;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;661;-351.4232,1095.355;Inherit;False;Multiply;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;662;-345.4095,1304.167;Inherit;False;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;379;-48.5603,1282.605;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;382;501.8256,334.2374;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;824;765.0967,296.2389;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;0;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;825;765.0967,296.2389;Float;False;True;-1;2;UnityEditor.ShaderGraphLitGUI;0;12;Polytope Studio/ PT_Medieval Modular NPC Shader Toon;94348b07e5e8bab40bd6c8a1e3df54cd;True;Forward;0;1;Forward;21;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=UniversalForward;False;False;0;Hidden/InternalErrorShader;0;0;Standard;45;Lighting Model;0;0;Workflow;1;0;Surface;0;0;  Refraction Model;0;0;  Blend;0;0;Two Sided;1;0;Alpha Clipping;1;0;  Use Shadow Threshold;0;0;Fragment Normal Space,InvertActionOnDeselection;0;0;Forward Only;0;0;Transmission;0;0;  Transmission Shadow;0.5,False,;0;Translucency;0;0;  Translucency Strength;1,False,;0;  Normal Distortion;0.5,False,;0;  Scattering;2,False,;0;  Direct;0.9,False,;0;  Ambient;0.1,False,;0;  Shadow;0.5,False,;0;Cast Shadows;1;0;Receive Shadows;1;0;Receive SSAO;1;0;Motion Vectors;1;0;  Add Precomputed Velocity;0;0;GPU Instancing;1;0;LOD CrossFade;1;0;Built-in Fog;1;0;_FinalColorxAlpha;0;0;Meta Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,False,;0;  Type;0;0;  Tess;16,False,;0;  Min;10,False,;0;  Max;25,False,;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Write Depth;0;0;  Early Z;0;0;Vertex Position,InvertActionOnDeselection;1;0;Debug Display;0;0;Clear Coat;0;0;0;11;False;True;True;True;True;True;True;True;True;True;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;826;765.0967,296.2389;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;827;765.0967,296.2389;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=DepthOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;828;765.0967,296.2389;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;829;765.0967,296.2389;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Universal2D;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;830;765.0967,296.2389;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthNormals;0;6;DepthNormals;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=DepthNormals;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;831;765.0967,296.2389;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;GBuffer;0;7;GBuffer;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=UniversalGBuffer;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;832;765.0967,376.2389;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;SceneSelectionPass;0;8;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;833;765.0967,376.2389;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ScenePickingPass;0;9;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Picking;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;834;765.0967,396.2389;Float;False;False;-1;3;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;MotionVectors;0;10;MotionVectors;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;False;False;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=MotionVectors;False;False;0;;0;0;Standard;0;False;0
WireConnection;725;1;724;0
WireConnection;725;3;721;0
WireConnection;727;0;722;0
WireConnection;727;1;723;0
WireConnection;730;0;722;0
WireConnection;730;1;726;0
WireConnection;733;1;724;0
WireConnection;733;3;728;0
WireConnection;729;1;727;0
WireConnection;729;2;725;0
WireConnection;736;0;722;0
WireConnection;736;1;731;0
WireConnection;737;0;729;0
WireConnection;737;1;730;0
WireConnection;737;2;733;0
WireConnection;738;1;724;0
WireConnection;738;3;732;0
WireConnection;745;0;737;0
WireConnection;745;1;736;0
WireConnection;745;2;738;0
WireConnection;740;1;724;0
WireConnection;740;3;734;0
WireConnection;744;0;722;0
WireConnection;744;1;739;0
WireConnection;752;0;722;0
WireConnection;752;1;742;0
WireConnection;750;0;745;0
WireConnection;750;1;744;0
WireConnection;750;2;740;0
WireConnection;749;1;724;0
WireConnection;749;3;741;0
WireConnection;758;1;724;0
WireConnection;758;3;748;0
WireConnection;756;0;722;0
WireConnection;756;1;751;0
WireConnection;754;0;750;0
WireConnection;754;1;752;0
WireConnection;754;2;749;0
WireConnection;743;1;724;0
WireConnection;743;3;735;0
WireConnection;761;0;754;0
WireConnection;761;1;756;0
WireConnection;761;2;758;0
WireConnection;764;0;722;0
WireConnection;764;1;757;0
WireConnection;747;1;724;0
WireConnection;747;3;746;0
WireConnection;766;0;761;0
WireConnection;766;1;764;0
WireConnection;766;2;743;0
WireConnection;767;0;722;0
WireConnection;767;1;763;0
WireConnection;771;0;766;0
WireConnection;771;1;767;0
WireConnection;771;2;747;0
WireConnection;759;1;724;0
WireConnection;759;3;753;0
WireConnection;773;0;722;0
WireConnection;773;1;768;0
WireConnection;760;1;724;0
WireConnection;760;3;755;0
WireConnection;779;0;722;0
WireConnection;779;1;772;0
WireConnection;776;0;771;0
WireConnection;776;1;773;0
WireConnection;776;2;759;0
WireConnection;782;0;776;0
WireConnection;782;1;779;0
WireConnection;782;2;760;0
WireConnection;765;1;724;0
WireConnection;765;3;762;0
WireConnection;781;0;722;0
WireConnection;781;1;777;0
WireConnection;787;0;722;0
WireConnection;787;1;783;0
WireConnection;788;0;782;0
WireConnection;788;1;781;0
WireConnection;788;2;765;0
WireConnection;774;1;724;0
WireConnection;774;3;769;0
WireConnection;791;0;722;0
WireConnection;791;1;785;0
WireConnection;794;0;788;0
WireConnection;794;1;787;0
WireConnection;794;2;774;0
WireConnection;775;1;724;0
WireConnection;775;3;770;0
WireConnection;799;0;794;0
WireConnection;799;1;791;0
WireConnection;799;2;775;0
WireConnection;796;0;722;0
WireConnection;796;1;793;0
WireConnection;780;1;724;0
WireConnection;780;3;778;0
WireConnection;801;0;722;0
WireConnection;801;1;798;0
WireConnection;789;1;724;0
WireConnection;789;3;784;0
WireConnection;803;0;799;0
WireConnection;803;1;796;0
WireConnection;803;2;780;0
WireConnection;807;0;803;0
WireConnection;807;1;801;0
WireConnection;807;2;789;0
WireConnection;808;0;722;0
WireConnection;808;1;802;0
WireConnection;795;1;724;0
WireConnection;795;3;786;0
WireConnection;811;0;807;0
WireConnection;811;1;808;0
WireConnection;811;2;795;0
WireConnection;814;0;722;0
WireConnection;814;1;810;0
WireConnection;797;1;724;0
WireConnection;797;3;792;0
WireConnection;9;0;10;4
WireConnection;815;0;811;0
WireConnection;815;1;814;0
WireConnection;815;2;797;0
WireConnection;817;0;722;0
WireConnection;817;1;812;0
WireConnection;800;1;724;0
WireConnection;800;3;790;0
WireConnection;16;0;9;0
WireConnection;294;0;16;0
WireConnection;17;1;9;0
WireConnection;17;2;25;0
WireConnection;17;3;26;0
WireConnection;17;4;18;1
WireConnection;17;5;18;2
WireConnection;819;0;722;0
WireConnection;819;1;816;0
WireConnection;820;0;815;0
WireConnection;820;1;817;0
WireConnection;820;2;800;0
WireConnection;809;1;724;0
WireConnection;809;3;804;0
WireConnection;822;0;722;0
WireConnection;822;1;818;0
WireConnection;293;0;294;0
WireConnection;813;1;724;0
WireConnection;813;3;806;0
WireConnection;821;0;820;0
WireConnection;821;1;819;0
WireConnection;821;2;809;0
WireConnection;290;0;17;0
WireConnection;369;3;362;0
WireConnection;291;0;290;0
WireConnection;365;3;361;0
WireConnection;292;0;293;0
WireConnection;368;3;363;0
WireConnection;823;0;821;0
WireConnection;823;1;822;0
WireConnection;823;2;813;0
WireConnection;64;0;823;0
WireConnection;64;1;291;0
WireConnection;64;2;292;0
WireConnection;370;0;368;0
WireConnection;370;1;366;0
WireConnection;374;0;365;0
WireConnection;374;1;364;0
WireConnection;371;0;369;0
WireConnection;371;1;367;0
WireConnection;699;0;684;0
WireConnection;395;0;64;0
WireConnection;394;0;64;0
WireConnection;700;0;685;0
WireConnection;396;0;64;0
WireConnection;701;0;688;0
WireConnection;698;0;370;0
WireConnection;698;1;697;0
WireConnection;696;0;374;0
WireConnection;696;1;695;0
WireConnection;689;0;371;0
WireConnection;689;1;690;0
WireConnection;560;0;395;0
WireConnection;686;0;696;0
WireConnection;686;1;700;0
WireConnection;687;0;698;0
WireConnection;687;1;701;0
WireConnection;390;0;396;0
WireConnection;683;0;689;0
WireConnection;683;1;699;0
WireConnection;559;0;394;0
WireConnection;663;0;687;0
WireConnection;663;1;559;0
WireConnection;661;0;683;0
WireConnection;661;1;390;0
WireConnection;662;0;686;0
WireConnection;662;1;560;0
WireConnection;379;0;661;0
WireConnection;379;1;662;0
WireConnection;379;2;663;0
WireConnection;382;0;64;0
WireConnection;382;1;379;0
WireConnection;825;2;382;0
ASEEND*/
//CHKSM=24D9AFED319C504BE9CEC8C62661A146B3B37B3C