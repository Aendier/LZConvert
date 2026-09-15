Shader "Effects/NBShader(expensive-Forbidden)" {
	Properties {
		_UIEffect_Toggle ("UI模式_Toggle", Float) = 0
		_DistortionBothDirection_Toggle ("__DistortionBothDirection_Toggle", Float) = 0
		_ChangeSaturability_Toggle ("__ChangeSaturability_Toggle", Float) = 0
		_Mask_Toggle ("__Mask_Toggle", Float) = 0
		_Mask_RotationToggle ("__Mask_RotationToggle", Float) = 0
		_Mask2_Toggle ("__Mask2_Toggle", Float) = 0
		_Mask3_Toggle ("__Mask3_Toggle", Float) = 0
		_BaseBackColor_Toggle ("__BaseBackColor_Toggle", Float) = 0
		_UseUV1_Toggle ("__UseUV1_Toggle", Float) = 0
		_TransparentMode ("_TransparentMode", Float) = 1
		_ForceZWriteToggle ("_ForceZWriteToggle", Float) = 0
		_Dissolve_Toggle ("__Dissolve_Toggle", Float) = 0
		_DissolveMask_Toggle ("__DissolveMask_Toggle", Float) = 0
		_DissolveVoronoi_Toggle ("__DissolveVoronoi_Toggle", Float) = 0
		_Dissolve_useRampMap_Toggle ("__Dissolve_useRampMap_Toggle", Float) = 0
		_Dissolve_Test_Toggle ("__Dissolve_Test_Toggle", Float) = 0
		_FresnelMode ("__FresnelMode", Float) = 0
		_InvertFresnel_Toggle ("__InvertFresnel_Toggle", Float) = 0
		_HueShift_Toggle ("__HueShift_Toggle", Float) = 0
		_BackFaceColor_Toggle ("_BackFaceColor_Toggle", Float) = 0
		_BackFirstPassToggle ("_BackFirstPassToggle", Float) = 0
		[PerRendererData] _MainTex ("Sprite Texture-ignore", 2D) = "white" {}
		_Color ("颜色贴图叠加", Vector) = (1,1,1,1)
		_UI_MainTex_ST ("UI模式主贴图 xy:UV缩放 zw:UV偏移", Vector) = (1,1,0,0)
		_MainTex_Reverse_ST ("MainTex_Reverse_ST-ignore", Vector) = (1,1,0,0)
		_BaseMap ("主贴图 xy:UV缩放 zw:UV偏移", 2D) = "white" {}
		_BaseMapMaskMapOffset ("xy主贴图偏移速度", Vector) = (0,0,0,0)
		_BaseMapUVRotation ("主贴图旋转", Range(0, 360)) = 0
		_BaseMapUVRotationSpeed ("主贴图旋转速度", Float) = 0
		[HDR] _BaseColor ("主贴图颜色_hdr", Vector) = (1,1,1,1)
		[HDR] _BaseBackColor ("背面颜色_hdr", Vector) = (1,1,1,1)
		_BaseColorIntensityForTimeline ("整体颜色强度", Range(0, 10)) = 1
		_Saturability ("饱和度", Range(0, 1)) = 0
		_Contrast_Toggle ("__Contrast_Toggle", Float) = 0
		_Contrast ("对比度", Float) = 1
		_ContrastMidColor ("对比度中值颜色", Vector) = (0.5,0.5,0.5,1)
		_HueShift ("色相", Range(0, 1)) = 0
		_BaseMapColorRefine_Toggle ("__BaseMapColorRefine_Toggle", Float) = 0
		_BaseMapColorRefine ("主贴图颜色Refine", Vector) = (1,1,2,1)
		_AlphaAll ("整体透明度", Range(0, 1)) = 1
		_IgnoreVetexColor_Toggle ("_IgnoreVetexColor_Toggle", Float) = 0
		_SpecialUVChannelMode ("特殊UV通道选择", Float) = 0
		_Cutoff ("裁剪位置", Float) = 0
		[HideInInspector] _TimeMode ("__TimeMode", Float) = 0
		_MaskMap ("遮罩贴图 xy:UV缩放 zw:UV偏移", 2D) = "white" {}
		_MaskMap2 ("遮罩2贴图 xy:UV缩放 zw:UV偏移", 2D) = "white" {}
		_MaskMap3 ("遮罩3贴图 xy:UV缩放 zw:UV偏移", 2D) = "white" {}
		_MaskMapOffsetAnition ("xy:遮罩偏移速度，zw:遮罩2偏移速度", Vector) = (0,0,0,0)
		_MaskMap3OffsetAnition ("xy:遮罩3偏移速度", Vector) = (0,0,0,0)
		_MaskMapUVRotation ("遮罩旋转", Range(0, 360)) = 0
		_MaskDistortion_intensity ("遮罩扭曲强度", Float) = 0
		_MaskMapRotationSpeed ("遮罩旋转速度", Float) = 0
		_MaskMapVec ("x整体遮罩强度", Vector) = (1,0,0,0)
		[HideInInspector] _Chachu ("__Chachu_ignore", Float) = 0
		_EdgeFade ("EdgeFade_ignore", Range(0, 1)) = 0.05
		_XianXingCH_UVRota ("XianXingCH_UVRota_ignore", Float) = 0
		_jingxiangCH_dire ("Direction_ignore", Range(0, 1)) = 0
		[HideInInspector] _UTwirlEnabled ("__UTwirlEnabled", Float) = 0
		_TWParameter ("xy:旋转扭曲中心", Vector) = (0.5,0.5,0,0)
		_TWStrength ("旋转扭曲强度", Float) = 0
		[HideInInspector] _noisemapEnabled ("__noisemapEnabled", Float) = 0
		[HideInInspector] _noiseMaskMap_Toggle ("__noiseMaskMap_Toggle", Float) = 0
		_NoiseMap ("扭曲贴图 xy:UV缩放 zw:UV偏移", 2D) = "white" {}
		_NoiseMaskMap ("扭曲遮罩贴图 xy:UV缩放 zw:UV偏移", 2D) = "white" {}
		_NoiseMapUVRotation ("扭曲旋转", Range(0, 360)) = 0
		_NoiseOffset ("xy:扭曲偏移速度 ", Vector) = (0,0,0,0)
		_TexDistortion_intensity ("扭曲强度", Float) = 0.5
		_DistortionDirection ("扭曲方向xy, 色散强度z", Vector) = (1,1,0,0)
		_Distortion_Choraticaberrat_Toggle ("扭曲色散开关_Toggle", Float) = 0
		_Distortion_Choraticaberrat_WithNoise_Toggle ("色散受扭曲影响_Toggle", Float) = 1
		[HideInInspector] _EmissionEnabled ("__EmissionEnabled", Float) = 0
		_EmissionMap ("流光贴图 xy:UV缩放 zw:UV偏移", 2D) = "white" {}
		_EmissionMapUVRotation ("流光贴图旋转", Range(0, 360)) = 0
		_Emi_Distortion_intensity ("流光贴图扭转强度", Float) = 0
		_EmissionMapUVOffset ("xy:流光贴图偏移速度", Vector) = (0,0,0,0)
		_EmissionSelfAlphaWeight ("__EmissionSelfAlphaWeight_ignore", Float) = 0
		_uvRapSoft ("LiuuvRapSoft-ignore", Range(0, 1)) = 0
		[HDR] _EmissionMapColor ("流光贴图颜色_hdr", Vector) = (1,1,1,1)
		_EmissionMapColorIntensity ("流光颜色强度", Float) = 1
		_EmissionFollowMainTexUV ("流光跟随主贴图", Float) = 0
		_ColorBlendMap_Toggle ("__ColorBlendMap_Toggle", Float) = 0
		_ColorBlendMap ("颜色渐变贴图 xy:UV缩放 zw:UV偏移", 2D) = "white" {}
		[HDR] _ColorBlendColor ("颜色渐变叠加_hdr", Vector) = (1,1,1,1)
		_ColorBlendMapOffset ("xy:颜色渐变贴图偏移动画", Vector) = (0,0,0,0)
		_ColorBlendAlphaMultiplyMode ("颜色渐变Alpha相乘开关", Float) = 0
		_ColorBlendFollowMainTexUV ("颜色渐变UV跟随主贴图UV", Float) = 0
		_ColorBlendVec ("x:颜色渐变扰动强度z:Alpha强度w:旋转", Vector) = (0,0,1,0)
		_Dissolve ("x:溶解强度 y:溶解值Pow z:过程溶解强度 w:溶解硬软度", Vector) = (0.5,1,0,0.1)
		_DissolveMap ("溶解贴图 xy:UV缩放 zw:UV偏移", 2D) = "grey" {}
		_DissolveMaskMap ("局部溶解蒙版 xy:UV缩放 zw:UV偏移", 2D) = "white" {}
		_DissolveOffsetRotateDistort ("xy:溶解贴图偏移速度 z:溶解贴图旋转", Vector) = (0,0,0,0)
		[HDR] _DissolveLineColor ("溶解描边颜色_hdr", Vector) = (0,0,0,1)
		_DissolveVoronoi_Vec ("xy:噪波1缩放,zw:噪波2缩放", Vector) = (1,1,2,2)
		_DissolveVoronoi_Vec2 ("x:噪波1和噪波2混合系数(圆尖),y:噪波整体和溶解贴图混合系数,z:噪波1速度,w:噪波2速度", Vector) = (1,1,2,2)
		_DissolveVoronoi_Vec3 ("xy:噪波1偏移速度,zw:噪波2偏移速度", Vector) = (0,0,0,0)
		_DissolveVoronoi_Vec4 ("xy:噪波1偏移,zw:噪波2偏移", Vector) = (0,0,0,0)
		_Dissolve_Vec2 ("x:Ramp位置偏移,y:Ramp范围", Vector) = (0,1,0,0)
		_DissolveLineMaskToggle ("溶解描边开关", Float) = 0
		_CustomData1X ("ignore", Float) = 0
		_CustomData1Y ("ignore", Float) = 0
		_CustomData2X ("ignore", Float) = 0
		[ToggleOff] _CustomData ("__CustomData_Toggle", Float) = 0
		[ToggleOff] _FlipbookBlending ("__flipbookblending_Toggle", Float) = 0
		_AdditiveToPreMultiplyAlphaLerp ("相加到预乘混合", Range(0, 1)) = 0
		[HideInInspector] _Blend ("__mode-ignore", Float) = 0
		[HideInInspector] _AlphaClip ("__clip-ignore", Float) = 0
		[HideInInspector] _SrcBlend ("__src-ignore", Float) = 1
		[HideInInspector] _DstBlend ("__dst-ignore", Float) = 0
		[HideInInspector] _Cull ("__cull-ignore", Float) = 2
		[HideInInspector] _ZTest ("__ztest-ignore", Float) = 4
		[HideInInspector] _ZWrite ("__ZWrite-ignore", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilComp ("__StencilComp-ignore", Float) = 8
		_Stencil ("Stencil ID-ignore", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilOp ("Stencil Operation-ignore", Float) = 0
		_StencilWriteMask ("Stencil Write Mask-ignore", Float) = 255
		_StencilReadMask ("Stencil Read Mask-ignore", Float) = 255
		_ColorMask ("Color Mask-ignore", Float) = 15
		_FresnelFadeDistance ("菲涅尔透明乘数", Float) = 1
		_FresnelUnit ("菲涅尔通用", Vector) = (0,0.5,1,0.5)
		_FresnelColorAffectByAlpha ("菲涅尔颜色受Alpha影响", Float) = 1
		_VertexOffset_Toggle ("顶点偏移", Float) = 0
		_VertexOffset_Map ("顶点偏移贴图", 2D) = "white" {}
		_VertexOffset_Vec ("xy:顶点偏移动画z:顶点偏移强度", Vector) = (0,0,1,0)
		_VertexOffset_NormalDir_Toggle ("顶点偏移自定义方向开关", Float) = 0
		_VertexOffset_StartFromZero ("顶点偏移从零开始开关", Float) = 0
		_VertexOffset_CustomDir ("顶点偏移自定义方向", Vector) = (1,1,1,0)
		_VertexOffset_Mask_Toggle ("顶点偏移遮罩开关", Float) = 0
		_VertexOffset_MaskMap ("顶点偏移遮罩贴图", 2D) = "white" {}
		_VertexOffset_MaskMap_Vec ("xy:顶点偏移遮罩动画z:顶点偏移遮罩强度", Vector) = (0,0,1,0)
		[HideInInspector] _ColorMode ("_ColorMode", Float) = 0
		[HideInInspector] _ScreenDistortModeToggle ("_ScreenDistortModeToggle", Float) = 0
		[HideInInspector] _QueueBias ("Queue偏移_QueueBias", Float) = 0
		[HideInInspector] _FlipbookMode ("flipbook mode", Float) = 0
		[HideInInspector] _Mode ("mode", Float) = 0
		[HideInInspector] _fresnelEnabled ("__fresnelEnabled", Float) = 0
		[NoScaleOffset] _FresnelHDRITex ("__FresnelHDRITex_ignore", Cube) = "white" {}
		[HDR] _FresnelColor ("菲涅尔颜色_hdr", Vector) = (1,1,1,1)
		_FresnelRotation ("菲涅尔方向偏移", Vector) = (0,0,0,0.5)
		_FrePower ("FrePower-ignore", Range(0, 1)) = 0.5
		[HideInInspector] _ColorA ("ColorA-ignore", Vector) = (1,1,1,1)
		[HideInInspector] _Fade ("xy:近距离透明过度范围", Vector) = (2,4,0,0)
		[HideInInspector] _InspectorData ("__InspectorData-ignore", Vector) = (1,1,0,0)
		[Header(ZOffset)] _ZOffset_Toggle ("深度偏移_Toggle", Float) = 0
		_offsetFactor ("深度偏移Sacle-ignore", Range(-2000, 2000)) = 0
		_offsetUnits ("深度偏移单位距离-ignore", Range(-2000, 2000)) = 0
		[HideInInspector] _W9ParticleShaderFlags ("_W9ParticleShaderFlags", Int) = 0
		[HideInInspector] _W9ParticleShaderFlags1 ("_W9ParticleShaderFlags1", Int) = 0
		[HideInInspector] _W9ParticleShaderWrapFlags ("_W9ParticleShaderWrapFlags", Int) = 0
		[HideInInspector] _W9ParticleCustomDataFlag0 ("_W9ParticleCustomDataFlag0", Int) = 0
		[HideInInspector] _W9ParticleCustomDataFlag1 ("_W9ParticleCustomDataFlag1", Int) = 0
		[HideInInspector] _W9ParticleCustomDataFlag2 ("_W9ParticleCustomDataFlag2", Int) = 0
		[HideInInspector] _W9ParticleCustomDataFlag3 ("_W9ParticleCustomDataFlag3", Int) = 0
		[HideInInspector] _UVModeFlag0 ("_UVModeFlag0", Int) = 0
		[HideInInspector] _W9ParticleShaderGUIFoldToggle ("_W9ParticleShaderGUIFoldToggle", Int) = 4E-45
		[HideInInspector] _W9ParticleShaderGUIFoldToggle1 ("_W9ParticleShaderGUIFoldToggle1", Int) = 3.57E-43
		[HideInInspector] _W9ParticleShaderGUIFoldToggle2 ("_W9ParticleShaderGUIFoldToggle2", Int) = 3.57E-43
		[HideInInspector] _W9ParticleShaderColorChannelFlag ("_W9ParticleShaderColorChannelFlag", Int) = 4E-45
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200

		Pass
		{
			HLSLPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			float4x4 unity_ObjectToWorld;
			float4x4 unity_MatrixVP;
			float4 _MainTex_ST;

			struct Vertex_Stage_Input
			{
				float4 pos : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct Vertex_Stage_Output
			{
				float2 uv : TEXCOORD0;
				float4 pos : SV_POSITION;
			};

			Vertex_Stage_Output vert(Vertex_Stage_Input input)
			{
				Vertex_Stage_Output output;
				output.uv = (input.uv.xy * _MainTex_ST.xy) + _MainTex_ST.zw;
				output.pos = mul(unity_MatrixVP, mul(unity_ObjectToWorld, input.pos));
				return output;
			}

			Texture2D<float4> _MainTex;
			SamplerState sampler_MainTex;
			float4 _Color;

			struct Fragment_Stage_Input
			{
				float2 uv : TEXCOORD0;
			};

			float4 frag(Fragment_Stage_Input input) : SV_TARGET
			{
				return _MainTex.Sample(sampler_MainTex, input.uv.xy) * _Color;
			}

			ENDHLSL
		}
	}
	//CustomEditor "ParticleBaseGUI"
}